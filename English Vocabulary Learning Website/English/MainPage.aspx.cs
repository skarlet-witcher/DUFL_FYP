using System;
using System.Web.UI.WebControls;
using Entity;
using System.Data;

namespace English_Learning_Website
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        public static int MultiviewSwitcher = 1;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (MultiviewSwitcher == 1)
                {
                    MultiView1.SetActiveView(View_GuestUI);
                }
                if (MultiviewSwitcher == 2)
                {
                    MultiView1.SetActiveView(View_UserUI);
                    lbl_Welcome.Text = "欢迎你，" + ((UserInfo)Session["user"]).UserName + "同学！";
                    MultiviewSwitcher = 1;
                }
                if (MultiviewSwitcher == 3)
                {
                    MultiView1.SetActiveView(View_AdminUI);
                    lbl_Admin_Welcome.Text = "欢迎你，" + ((AdminInfo)Session["admin"]).AdminName + "管理员！";
                    MultiviewSwitcher = 1;
                }
                if (MultiviewSwitcher == 4)
                {
                    MultiView1.SetActiveView(View_AdminUI);
                    lbl_Admin_Welcome.Text = "欢迎你，" + ((SuperAdminInfo)Session["superadmin"]).SuperAdminID + "超级管理员！";
                    btn_SuperAdmin_AdminInfo.Enabled = true;
                    MultiviewSwitcher = 1;
                }
            }

        }

        protected void btn_Login_Click(object sender, EventArgs e)
        {
            Response.Write("<script>window.location.href = 'Login.aspx'</script>");
        }

        protected void btn_Register_Click(object sender, EventArgs e)
        {
            Response.Write("<script>window.location.href = 'RegisterForStudent.aspx'</script>");
        }

        protected void btn_Search_Click(object sender, EventArgs e)
        {
            lbl_ResultForSC.Text = "";
            if (this.tbx_SearchForGuest.Text.Trim() == "")
            {
                Response.Write("<script>alert('搜索内容不能为空！')</script>");
                return;
            }

            MultiView_Guest_SearchResult.SetActiveView(View_ResultForSC);
            Entity.StudentCollections sc = new StudentCollections();
            sc.Cname = tbx_SearchForGuest.Text.Trim();
            DataTable dt = Business.StudentBusiness.GetCollectionName(sc);
            if (dt == null || dt.Rows.Count == 0)
            {
                lbl_ResultForSC.Text = "未找到相关记录";
                GridView1.Visible = false;
            }
            else
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();
                GridView1.Visible = true;
                lbl_ResultForSC.Text = "";
            }




        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Response.Write("<script>alert('您是游客，请先登录！');window.location.href='Login.aspx'</script>");
        }

        

        protected void GridView4_SelectedIndexChanged(object sender, EventArgs e)
        {
            Response.Write("<script>alert('您是游客，请先登录！');window.location.href='Login.aspx'</script>");
        }

       

        protected void GridView6_SelectedIndexChanged(object sender, EventArgs e)
        {
            string cname = this.GridView6.Rows[this.GridView6.SelectedIndex].Cells[0].Text.ToString();
            string username = this.GridView6.Rows[this.GridView6.SelectedIndex].Cells[1].Text.ToString();
            DataTable dt = Business.StudentBusiness.GetUserIDByUserName(username);
            string userid = dt.Rows[0]["UserID"].ToString();
            DataTable dt2 = Business.StudentBusiness.StudentCollectionByCnameUserID(cname, userid);
            MultiView_User.SetActiveView(View_User_Detail_StudentCollection);
            this.GridView13.DataSource = dt2;
            this.GridView13.DataBind();
        }

        protected void btn_User_Search_Click(object sender, EventArgs e)
        {
            lbl_ResultForUserName.Text = "";
            lbl_User_ResultForSC.Text = "";
            if (this.tbx_User_Search.Text == "" || this.tbx_User_Search.Text == null)
            {
                Response.Write("<script>alert('搜索内容不能为空！')</script>");
                return;
            }
            if (rbl_User_SearchType.SelectedIndex == -1)
            {
                Response.Write("<script>alert('搜索方式不能为空！')</script>");
                return;
            }
            if (this.rbl_User_SearchType.SelectedIndex == 0)
            {
                MultiView_User.SetActiveView(View_User_ResultForSC);
                Entity.StudentCollections sc = new StudentCollections();
                sc.Cname = this.tbx_User_Search.Text.Trim();
                DataTable dt = Business.StudentBusiness.GetCollectionName(sc);
                if (dt == null || dt.Rows.Count == 0)
                {
                    lbl_User_ResultForSC.Text = "未找到相关记录";
                    this.GridView6.Visible = false;
                }
                else
                {
                    this.GridView6.DataSource = dt;
                    this.GridView6.DataBind();
                    this.GridView6.Visible = true;
                }
            }
            if (this.rbl_User_SearchType.SelectedIndex == 1)
            {
                MultiView_User.SetActiveView(View_User_ResultForUserName);
                DataTable dt = Business.StudentBusiness.SearchUserName(tbx_User_Search.Text.Trim());
                if (dt == null || dt.Rows.Count == 0)
                {
                    lbl_User_ResultForUserName.Text = "未找到相关记录";
                    GridView10.Visible = false;
                }
                else
                {
                    GridView10.DataSource = dt;
                    GridView10.DataBind();
                    GridView10.Visible = true;
                }
            }
        }

        protected void GridView7_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btn_UserInfo_Click(object sender, EventArgs e)
        {
            MultiView_User.SetActiveView(View_User_PersonalInfo);
            DataTable dt = Business.StudentBusiness.GetUserInfoByUserID((UserInfo)Session["user"]);
            lbl_UserID.Text = dt.Rows[0]["userid"].ToString(); 
            lbl_UserName.Text = dt.Rows[0]["username"].ToString();
            lbl_Birthday.Text = dt.Rows[0]["birthday"].ToString();
            lbl_Email.Text = dt.Rows[0]["email"].ToString();
            lbl_Age.Text = dt.Rows[0]["age"].ToString();
        }

        protected void btn_Settings_Click(object sender, EventArgs e)
        {
            MultiView_User.SetActiveView(View_User_ModifyPwd);
            tbx_OldPwd.Text = "";
            tbx_NewPwd.Text = "";
            tbx_ConfirmNewPwd.Text = "";
        }

        protected void btn_Logout_Click(object sender, EventArgs e)
        {
            Session.Remove("user");
            Session.Remove("stucol");
            Response.Write("<script>window.location.href='Login.aspx'</script>");
        }

        protected void GridView11_RowEditing(object sender, GridViewEditEventArgs e)
        {

        }


        protected void btn_InsertNewWord_Click(object sender, EventArgs e)
        {

        }

        protected void GridView12_SelectedIndexChanged(object sender, EventArgs e)
        {
            string cname = this.GridView12.Rows[this.GridView12.SelectedIndex].Cells[0].Text.ToString();
            StudentCollections sc = new StudentCollections();
            sc.Cname = cname;
            Session["stucol"] = sc;
            DataTable dt = Business.StudentBusiness.GetCollectionDetailByCnameUserID(cname, ((UserInfo)Session["user"]).UserID);
            MultiView_User.SetActiveView(View_User_CollectionsEdit);
            this.GridView14.DataSource = dt;
            this.GridView14.DataBind();
        }

        protected void btn_MyCollections_Click(object sender, EventArgs e)
        {
            int check = Business.StudentBusiness.CheckMyCollection(((UserInfo)Session["user"]).UserID);
            if (check <= 0)
            {
                Response.Write("<script>alert('你还没有学习集哦，点击确定为你转到创建学习集页面;')</script>");
                MultiView_User.SetActiveView(View_User_CreateCollection);
                tbx_CollectonName.Text = "";
                return;
            }
            DataTable dt = Business.StudentBusiness.GetMyCollectionsByUserID((UserInfo)Session["user"]);
            MultiView_User.SetActiveView(View_MyCollections);
            this.GridView12.DataSource = dt;
            this.GridView12.DataBind();

        }

        protected void GridView14_SelectedIndexChanged(object sender, EventArgs e)
        {
            string english = this.GridView14.Rows[this.GridView14.SelectedIndex].Cells[2].Text.ToString();
            string chinese = this.GridView14.Rows[this.GridView14.SelectedIndex].Cells[3].Text.ToString();
            int result = Business.StudentBusiness.User_CheckNewFavoriteWord(((UserInfo)Session["user"]).UserID, english, chinese);
            if (result > 0)
            {
                Response.Write("<script>alert('您已经收藏过该单词，不用再收藏')</script>");
            }
            else
            {
                result = Business.StudentBusiness.User_InsertNewFavoriteWord(((UserInfo)Session["user"]).UserID, english, chinese);
                if (result == 1)
                {
                    Response.Write("<script>alert('收藏成功')</script>");
                }
                else
                {
                    Response.Write("<script>alert('收藏失败！')</script>");
                }
            }
        }

        protected void GridView10_SelectedIndexChanged(object sender, EventArgs e)
        {
            string userid = this.GridView10.Rows[this.GridView10.SelectedIndex].Cells[0].Text.ToString();
            DataTable dt = Business.StudentBusiness.User_GetCollectionsByUserID(userid);
            MultiView_User.SetActiveView(View_User_ResultForSC);
            this.GridView6.DataSource = dt;
            this.GridView6.DataBind();
        }

        protected void GridView14_RowEditing(object sender, GridViewEditEventArgs e)
        {
            this.GridView14.EditIndex = e.NewEditIndex;
            string English = this.GridView14.Rows[e.NewEditIndex].Cells[2].Text;
            string chinese = this.GridView14.Rows[e.NewEditIndex].Cells[3].Text;
            string cname = this.GridView14.Rows[e.NewEditIndex].Cells[1].Text;
            DataTable dt = Business.StudentBusiness.GetCollectionDetailByCnameUserID(cname, ((UserInfo)Session["user"]).UserID);
            this.GridView14.DataSource = dt;
            this.GridView14.DataBind();
        }

        protected void btn_ModifyWords_Click(object sender, EventArgs e)
        {
            MultiView_User.SetActiveView(View_User_Insert);
            tbx_English.Text = "";
            tbx_Chinese.Text = "";
        }

        protected void GridView14_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            string cname = ((StudentCollections)Session["stucol"]).Cname;
            DataTable dt = Business.StudentBusiness.GetCollectionDetailByCnameUserID(cname, ((UserInfo)Session["user"]).UserID);
            this.GridView14.EditIndex = -1;
            this.GridView14.DataSource = dt;
            this.GridView14.DataBind();
        }

        protected void GridView14_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            if (e.RowIndex >= 0)
            {
                    
                    StudentCollections sc = new StudentCollections();
                    try
                    {
                        if (sc.Chinese.Trim() == "" || sc.English.Trim() == "")
                        {
                            Response.Write("<script>alert('中文含义或英文单词中的内容不完整，请重新输入')</script>");
                            string cname = ((StudentCollections)Session["stucol"]).Cname;
                            DataTable dt2 = Business.StudentBusiness.GetCollectionDetailByCnameUserID(cname, ((UserInfo)Session["user"]).UserID);
                            this.GridView14.EditIndex = -1;
                            this.GridView14.DataSource = dt2;
                            this.GridView14.DataBind();
                            return;
                        }
                    }
                    catch
                    {
                        Response.Write("<script>alert('中文含义或英文单词中的内容不完整，请重新输入')</script>");
                        string cname = ((StudentCollections)Session["stucol"]).Cname;
                        DataTable dt2 = Business.StudentBusiness.GetCollectionDetailByCnameUserID(cname, ((UserInfo)Session["user"]).UserID);
                        this.GridView14.EditIndex = -1;
                        this.GridView14.DataSource = dt2;
                        this.GridView14.DataBind();
                        return;
                    }
                    sc.UserID = e.NewValues["userid"].ToString(); 
                    sc.WordID = e.NewValues["wordid"].ToString();
                    sc.English = e.NewValues["English"].ToString();
                    sc.Chinese = e.NewValues["chinese"].ToString();
                    sc.Cname = e.NewValues["cname"].ToString();
                    
                    
                    int result = Business.StudentBusiness.ModifyWord(sc);

                    if (result > 0)
                    {
                        Response.Write("<script>alert('更新成功！')</script>");
                    }
                    else
                    {
                        Response.Write("<script>alert('更新失败！')</script>");
                    }
                    this.GridView14.EditIndex = -1;
                    DataTable dt = Business.StudentBusiness.GetCollectionDetailByCnameUserID(sc.Cname, ((UserInfo)Session["user"]).UserID);
                    this.GridView14.DataSource = dt;
                    this.GridView14.DataBind();
                

                
            }
        }

        protected void GridView14_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            if (e.RowIndex >= 0)
            {
                string wordid = this.GridView14.Rows[e.RowIndex].Cells[4].Text.ToString();
                string cname = this.GridView14.Rows[e.RowIndex].Cells[1].Text.ToString();
                int r = Business.StudentBusiness.DeleteWord(wordid);

                if (r == 1)
                {
                    Response.Write("<script>alert('删除成功！')</script>");
                    int result = Business.StudentBusiness.CheckWordsinCollection(((UserInfo)Session["user"]).UserID, cname);
                    if (result <= 0)
                    {
                        Response.Write("<script>alert('学习集内没有单词，学习集自动删除! 点击确定为你跳转到我的学习集页面')</script>");
                        DataTable dt2 = Business.StudentBusiness.GetMyCollectionsByUserID((UserInfo)Session["user"]);
                        MultiView_User.SetActiveView(View_MyCollections);
                        this.GridView12.DataSource = dt2;
                        this.GridView12.DataBind();
                    }
                }
                else
                {
                    Response.Write("<script>alert('删除失败！')</script>");
                }


                this.GridView14.EditIndex = -1; 
                DataTable dt = Business.StudentBusiness.GetCollectionDetailByCnameUserID(cname, ((UserInfo)Session["user"]).UserID);
                this.GridView14.DataSource = dt;
                this.GridView14.DataBind();
            }
        }

        protected void btn_Save_Click(object sender, EventArgs e)
        {
            if (tbx_Chinese.Text.Trim() == "")
            {
                Response.Write("<script>alert('中文含义不能为空')</script>");
                return;
            }
            if (tbx_English.Text.Trim() == "")
            {
                Response.Write("<script>alert('日文含义不能为空')</script>");
                return;
            }
            int wordid = 0001; 
            DataTable dt = Business.StudentBusiness.SelectAllCollections();
            int length = dt.Rows[0]["wordid"].ToString().Length;
            int count = dt.Rows.Count;
            for (int i = 0; i < count; i++)
            {
                int curid = int.Parse(dt.Rows[i]["wordid"].ToString()); 
                if (wordid == curid)
                {
                    wordid++;
                }
                else
                {
                    break;   
                }
            }
            string newwordid = System.Convert.ToString(wordid).PadLeft(length, '0');

            int result = Business.StudentBusiness.InsertNewWord(((UserInfo)Session["user"]).UserID, ((StudentCollections)Session["stucol"]).Cname, tbx_English.Text.Trim(), tbx_Chinese.Text.Trim(), newwordid);

            if (result == 1)
            {
                Response.Write("<script>alert('插入成功')</script>");
            }
            else
            {
                Response.Write("<script>alert('插入失败')</script>");
            }
            
            DataTable dt3 = Business.StudentBusiness.GetCollectionDetailByCnameUserID(((StudentCollections)Session["stucol"]).Cname, ((UserInfo)Session["user"]).UserID);
            MultiView_User.SetActiveView(View_User_CollectionsEdit);
            this.GridView14.DataSource = dt3;
            this.GridView14.DataBind();
            tbx_Chinese.Text = "";
            tbx_English.Text = "";
        }

        protected void btn_Cancel_Click(object sender, EventArgs e)
        {
            DataTable dt = Business.StudentBusiness.GetCollectionDetailByCnameUserID(((StudentCollections)Session["stucol"]).Cname, ((UserInfo)Session["user"]).UserID);
            MultiView_User.SetActiveView(View_User_CollectionsEdit);
            this.GridView14.DataSource = dt;
            this.GridView14.DataBind();
            this.GridView14.EditIndex = -1;
        }



        protected void btn_StudentInfo_Click(object sender, EventArgs e)
        {
            tbx_Admin_SearchInfo.Text = "";
            tbx_admin_MinAge.Text = "";
            tbx_admin_MaxAge.Text = "";
            tbx_Admin_Age.Text = "";
            ddl_admin_GenderType.SelectedIndex = 0;
            rbl_Admin_SearchType.SelectedIndex = -1;
            DataTable dt = Business.AdminBusiness.SelectAllUserInfo();
            MultiView_Admin.SetActiveView(View_Admin_StudentInfo);
            GridView15.DataSource = dt;
            GridView15.DataBind();
        }

        protected void btn_Admin_Recovery_StudentInfo_Click(object sender, EventArgs e)
        {
            tbx_Admin_SearchInfo.Text = "";
            tbx_admin_MinAge.Text = "";
            tbx_admin_MaxAge.Text = "";
            tbx_Admin_Age.Text = "";
            ddl_admin_GenderType.SelectedIndex = 0;
            rbl_Admin_SearchType.SelectedIndex = -1;
            DataTable dt = Business.AdminBusiness.SelectAllUserInfo();
            GridView15.DataSource = dt;
            GridView15.DataBind();
        }

        protected void btn_Admin_StudentInfo_Common_Search_Click(object sender, EventArgs e)
        {
            if (this.tbx_Admin_SearchInfo.Text.Trim() == "")
            {
                Response.Write("<script>alert('搜索信息不能为空！')</script>");
                return;
            }
            if (rbl_Admin_SearchType.SelectedIndex == -1)
            {
                Response.Write("<script>alert('搜索信息不能为空！')</script>");
                return;
            }
            if (rbl_Admin_SearchType.SelectedIndex == 0)
            {
                DataTable dt = Business.AdminBusiness.SelectAllUserInfoByUserID(tbx_Admin_SearchInfo.Text.Trim());
                if (dt.Rows.Count == 0 || dt == null)
                {
                    Response.Write("<script>alert('未搜索到相关记录')</script>");
                    return;
                }
                GridView15.DataSource = dt;
                GridView15.DataBind();
            }
            else if (rbl_Admin_SearchType.SelectedIndex == 1)
            {
                DataTable dt = Business.AdminBusiness.SelectAllUserInfoByUserName(tbx_Admin_SearchInfo.Text.Trim());
                if (dt.Rows.Count == 0 || dt == null)
                {
                    Response.Write("<script>alert('未搜索到相关记录')</script>");
                    this.tbx_Admin_SearchInfo.Text = "";
                    return;
                }
                GridView15.DataSource = dt;
                GridView15.DataBind();
            }
            else
            {
                DataTable dt = Business.AdminBusiness.SelectAllUserInfoByYear(tbx_Admin_SearchInfo.Text.Trim());
                if (dt.Rows.Count == 0 || dt == null)
                {
                    Response.Write("<script>alert('未搜索到相关记录')</script>");
                    return;
                }
                GridView15.DataSource = dt;
                GridView15.DataBind();
            }

        }

        protected void btn_Admin_StudentInfo_Search_Gender_Click(object sender, EventArgs e)
        {
            if (ddl_admin_GenderType.SelectedIndex == 0)
            {
                Response.Write("<script>alert('搜索性别不能为空')</script>");
                return;
            }
            DataTable dt = Business.AdminBusiness.SelectAllUserInfoByGender(ddl_admin_GenderType.SelectedValue.ToString());
            if (dt.Rows.Count == 0 || dt == null)
            {
                Response.Write("<script>alert('未搜索到相关记录')</script>");
                ddl_admin_GenderType.SelectedIndex = 0;
                return;
            }
            GridView15.DataSource = dt;
            GridView15.DataBind();
        }

        protected void btn_Admin_StudentInfo_Search_RangeOfAge_Click(object sender, EventArgs e)
        {
            if (tbx_admin_MinAge.Text.Trim() == "" || tbx_admin_MaxAge.Text.Trim() == "")
            {
                Response.Write("<script>alert('搜索年龄区间不能为空')</script>");
                return;
            }
            try
            {
                DataTable dt = Business.AdminBusiness.SelectAllUserInfoByRangeOfAge(tbx_admin_MinAge.Text.Trim(), tbx_admin_MaxAge.Text.Trim());
                if (dt.Rows.Count == 0 || dt == null)
                {
                    Response.Write("<script>alert('未搜索到相关记录')</script>");
                    tbx_admin_MinAge.Text = "";
                    tbx_admin_MaxAge.Text = "";
                    return;
                }
                GridView15.DataSource = dt;
                GridView15.DataBind();
            }
            catch
            {
                Response.Write("<script>alert('您输入的年龄信息有误')</script>");
                tbx_admin_MinAge.Text = "";
                tbx_admin_MaxAge.Text = "";
                return;
            }
            
        }

        protected void btn_Admin_LogOut_Click(object sender, EventArgs e)
        {
            if (Session["admin"] != null)
            {
                Session.Remove("admin");
                Response.Write("<script>window.location.href='Login.aspx'</script>");
            }
            if (Session["superadmin"] != null)
            {
                Session.Remove("superadmin");
                btn_SuperAdmin_AdminInfo.Enabled = false;
                Response.Write("<script>window.location.href='Login.aspx'</script>");
            }

        }

        protected void btn_Admin_ModifyPwd_Click(object sender, EventArgs e)
        {
            if (Session["admin"] != null)
            {
                MultiView_Admin.SetActiveView(View_Admin_ModifyPwd);
                tbx_Admin_OldPwd.Text = "";
                tbx_Admin_NewPwd.Text = "";
                tbx_Admin_ConfirmPwd.Text = "";
            }
            if (Session["superadmin"] != null)
            {
                MultiView_Admin.SetActiveView(View_SuperAdmin_ModifyPwd);
                tbx_SuperAdmin_OldPwd.Text = "";
                tbx_SuperAdmin_NewPwd.Text = "";
                tbx_SuperAdmin_ConfirmPwd.Text = "";
            }

        }



        protected void GridView15_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            if (e.RowIndex >= 0)
            {
                string userid = this.GridView15.Rows[e.RowIndex].Cells[0].Text.ToString();
                int check = Business.AdminBusiness.Admin_PwdCheck(userid);
                if (check > 0)
                {
                    Response.Write("<script>alert('可能出现的问题：1、请先删除该用户创建的学习集。2、请删除收藏学生对应收藏中的信息 3、删除对应学生的密码保护答案信息 4、请联系管理员')</script>");
                    return;
                }
                try
                {
                    int result = Business.AdminBusiness.Admin_DeleteUserByUserID(userid);

                    if (result == 1)
                    {
                        Response.Write("<script>alert('删除成功！')</script>");
                    }
                    else
                    {
                        Response.Write("<script>alert('删除失败！')</script>");
                    }

                }
                catch
                {
                    Response.Write("<script>alert('可能出现的问题：1、请先删除该用户创建的学习集。2、请删除收藏学生对应收藏中的信息 3、删除对应学生的密码保护答案信息 4、请联系管理员')</script>");
                    return;
                }
                this.GridView15.EditIndex = -1; 
                DataTable dt = Business.AdminBusiness.SelectAllUserInfo();
                GridView15.DataSource = dt;
                GridView15.DataBind();
            }
        }





        protected void btn_InsertCollection_Click(object sender, EventArgs e)
        {
            if (tbx_CollectonName.Text.Trim() == "")
            {
                Response.Write("<script>alert('学习集名称不能为空')</script>");
                return;
            }
            if (tbx_CollectonName.Text.Trim().Length > 20)
            {
                Response.Write("<script>alert('学习集名称不能超过20个字符')</script>");
                return;
            }
            int wordid = 0001;  
            DataTable dt = Business.StudentBusiness.SelectAllCollections();
            int length = dt.Rows[0]["wordid"].ToString().Length;
            int count = dt.Rows.Count;
            for (int i = 0; i < count; i++)
            {
                int curid = int.Parse(dt.Rows[i]["wordid"].ToString()); 
                if (wordid == curid)
                {
                    wordid++;
                }
                else
                {
                    break;  
                }
            }
            string newwordid = System.Convert.ToString(wordid).PadLeft(length, '0');  
            int check_result = Business.StudentBusiness.CheckCollection(((UserInfo)Session["user"]).UserID, tbx_CollectonName.Text.Trim());
            if (check_result == 1)
            {
                Response.Write("<script>alert('您插入的学习集名称重复，请重新输入')</script>");
                return;
            }
            int result = Business.StudentBusiness.User_CreateCollection(((UserInfo)Session["user"]).UserID, tbx_CollectonName.Text.Trim(), "样例", "样例", newwordid);

            if (result == 1)
            {
                Response.Write("<script>alert('创建成功！单击确定，为您转到编辑页面，即可开始编辑单词！')</script>");
            }
            else
            {
                Response.Write("<script>alert('创建学习集时，出现了不可预见的错误，请及时联系管理员！')</script>");
            }
            
            StudentCollections sc = new StudentCollections();
            sc.Cname = tbx_CollectonName.Text.Trim();
            Session["stucol"] = sc;
            DataTable dt3 = Business.StudentBusiness.GetCollectionDetailByCnameUserID(tbx_CollectonName.Text.Trim(), ((UserInfo)Session["user"]).UserID);
            MultiView_User.SetActiveView(View_User_CollectionsEdit);
            this.GridView14.DataSource = dt3;
            this.GridView14.DataBind();

        }

        protected void btn_CreateCollections_Click(object sender, EventArgs e)
        {
            MultiView_User.SetActiveView(View_User_CreateCollection);
            tbx_CollectonName.Text = "";
        }

        protected void btn_CollectionsInfo_Click(object sender, EventArgs e)
        {
            DataTable dt = Business.AdminBusiness.Admin_SelectAllCollections();
            MultiView_Admin.SetActiveView(View_Admin_CollectionsInfo);
            tbx_Admin_UserID_CollectionsInfo.Text = "";
            this.GridView16.DataSource = dt;
            this.GridView16.DataBind();
        }

        protected void GridView16_SelectedIndexChanged(object sender, EventArgs e)
        {
            string userid = this.GridView16.Rows[this.GridView16.SelectedIndex].Cells[0].Text.ToString();
            string cname = this.GridView16.Rows[this.GridView16.SelectedIndex].Cells[2].Text.ToString();
            DataTable dt = Business.StudentBusiness.GetCollectionDetailByCnameUserID(cname, userid);
            MultiView_Admin.SetActiveView(View_Admin_CollectionsDetail);
            this.GridView17.DataSource = dt;
            this.GridView17.DataBind();
        }

        protected void GridView16_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            if (e.RowIndex >= 0)
            {
                string userid = this.GridView16.Rows[e.RowIndex].Cells[0].Text.ToString();
                string cname = this.GridView16.Rows[e.RowIndex].Cells[2].Text.ToString();
                int result = Business.AdminBusiness.Admin_DeleteCollections(userid, cname);

                if (result == 1)
                {
                    Response.Write("<script>alert('学习集删除成功')</script>");
                }
                else
                {
                    Response.Write("<script>alert('删除的学习集时出现了不可预知的错误，请及时联系管理员！')</script>");
                }
                this.GridView16.EditIndex = -1;
                DataTable dt = Business.AdminBusiness.Admin_SelectAllCollections();
                this.GridView16.DataSource = dt;
                this.GridView16.DataBind();
            }
        }

        protected void GridView17_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            if (e.RowIndex >= 0)
            {
                
                    string wordid = this.GridView17.Rows[e.RowIndex].Cells[4].Text.ToString();
                    string cname = this.GridView17.Rows[e.RowIndex].Cells[1].Text.ToString();
                    string userid = this.GridView17.Rows[e.RowIndex].Cells[0].Text.ToString();
                    int r = Business.StudentBusiness.DeleteWord(wordid);

                    if (r > 0)
                    {
                        Response.Write("<script>alert('删除成功！')</script>");
                    }
                    else
                    {
                        Response.Write("<script>alert('删除失败！')</script>");
                    }

                    DataTable dt = Business.StudentBusiness.GetCollectionDetailByCnameUserID(cname, userid);
                    if (dt.Rows.Count == 0 || dt == null)
                    {
                        Response.Write("<script>alert('该学习集中没有单词，为你转到学生全部学习集页面')</script>");
                        DataTable dt2 = Business.AdminBusiness.Admin_SelectAllCollections();
                        MultiView_Admin.SetActiveView(View_Admin_CollectionsInfo);
                        this.GridView16.DataSource = dt2;
                        this.GridView16.DataBind();
                        return;
                    }
                    this.GridView17.DataSource = dt;
                    this.GridView17.DataBind();
                
            }
        }

        protected void btn_SuperAdmin_AdminInfo_Click(object sender, EventArgs e)
        {
            DataTable dt = Business.SuperAdminBusiness.SuperAdmin_SelectAdminInfo();
            MultiView_Admin.SetActiveView(View_SuperAdmin_AdminInfo);
            tbx_SuperAdmin_AdminInfo.Text = "";
            rbl_type_AdminSearch.SelectedIndex = 0;
            this.GridView18.DataSource = dt;
            this.GridView18.DataBind();
        }

        

        





        

        protected void GridView19_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            if (e.RowIndex >= 0)
            {
                string english = this.GridView19.Rows[e.RowIndex].Cells[1].Text.ToString();
                string chinese = this.GridView19.Rows[e.RowIndex].Cells[2].Text.ToString();
                int result = Business.StudentBusiness.User_DeleteFavoriteWord(((UserInfo)Session["user"]).UserID, english, chinese);
                if (result == 1)
                {
                    Response.Write("<script>alert('删除成功！')</script>");
                    int check = Business.StudentBusiness.CheckFavoriteWord(((UserInfo)Session["user"]).UserID);
                    if (check <= 0)
                    {
                        Response.Write("<script>alert('收藏夹的内容为空,快去收藏点新单词吧!')</script>");

                    }
                }
                else
                {
                    Response.Write("<script>alert('删除失败！')</script>");
                }


                this.GridView19.EditIndex = -1; //编辑状态取消 
                DataTable dt = Business.StudentBusiness.User_GetMyFavoriteByUserID(((UserInfo)Session["user"]).UserID);
                this.GridView19.DataSource = dt;
                this.GridView19.DataBind();
            }
        }

        protected void btn_GoToEditPersonalInfo_Click(object sender, EventArgs e)
        {
            MultiView_User.SetActiveView(View_User_EditPersonalInfo);
            ddl_User_28Days.SelectedIndex = 0;
            ddl_User_29Days.SelectedIndex = 0;
            ddl_User_30Days.SelectedIndex = 0;
            ddl_User_31Days.SelectedIndex = 0;
            ddl_User_Month.SelectedIndex = 0;
            ddl_User_Year.SelectedIndex = 0;
            ddl_User_28Days.Visible = false;
            ddl_User_29Days.Visible = false;
            ddl_User_30Days.Visible = false;
            ddl_User_31Days.Visible = false;
            tbx_User_Age.Text = "";
            tbx_User_Username.Text = lbl_UserName.Text.Trim();
            int Emailname_index = lbl_Email.Text.IndexOf("@"); 
            int EmailWebsite_index = lbl_Email.Text.IndexOf(".com");
            tbx_User_EmailName.Text = lbl_Email.Text.Substring(0, Emailname_index); 
            tbx_User_EmailWebsite.Text = lbl_Email.Text.Substring(Emailname_index + 1, EmailWebsite_index - Emailname_index - 1);
        }

        protected void btn_ModifyPersonalInfo_Click(object sender, EventArgs e)
        {
            if (tbx_User_Username.Text.Trim() == "")
            {
                Response.Write("<script>alert('真实姓名不能为空！');</script>");
                return;
            }
            if (tbx_User_EmailName.Text.Trim() == "" || tbx_User_EmailWebsite.Text.Trim() == "")
            {
                Response.Write("<script>alert('邮箱信息不能为空！');</script>");
                return;
            }
            if (ddl_User_Year.SelectedIndex == 0 || ddl_User_Month.SelectedIndex == 0)
            {
                Response.Write("<script>alert('生日未填写完整！');</script>");
                return;
            }
            if (this.ddl_User_28Days.SelectedValue == "请选择" && this.ddl_User_29Days.SelectedValue == "请选择" && this.ddl_User_30Days.SelectedValue == "请选择" && this.ddl_User_31Days.SelectedValue == "请选择")
            {
                Response.Write("<script>alert('生日未填写完整！');</script>");
                return;
            }
            string day;
            if (this.ddl_User_28Days.Visible == true)
            {
                day = ddl_User_28Days.SelectedValue.ToString();
            }
            else if (this.ddl_User_29Days.Visible == true)
            {
                day = ddl_User_29Days.SelectedValue.ToString();
            }
            else if (this.ddl_User_30Days.Visible == true)
            {
                day = ddl_User_30Days.SelectedValue.ToString();
            }
            else
            {
                day = ddl_User_31Days.SelectedValue.ToString();
            }
            int result = Business.StudentBusiness.User_ModifyPersonalInfo(((UserInfo)Session["user"]).UserID, tbx_User_Username.Text.Trim(), ddl_User_Year.SelectedValue + "-" + ddl_User_Month.SelectedValue + "-" + day, tbx_User_EmailName.Text.Trim() + lbl_user_email_AT.Text.Trim() + tbx_User_EmailWebsite.Text.Trim() + lbl_user_Email_com.Text.Trim(), Convert.ToInt32(tbx_User_Age.Text.Trim()));
            if (result == 1)
            {
                Response.Write("<script>alert('修改成功');</script>");
                MultiView_User.SetActiveView(View_User_PersonalInfo);
                DataTable dt = Business.StudentBusiness.GetUserInfoByUserID((UserInfo)Session["user"]);
                lbl_UserID.Text = dt.Rows[0]["userid"].ToString();
                lbl_UserName.Text = dt.Rows[0]["username"].ToString();
                lbl_Birthday.Text = dt.Rows[0]["birthday"].ToString();
                lbl_Email.Text = dt.Rows[0]["email"].ToString();
                lbl_Age.Text = dt.Rows[0]["age"].ToString();
            }
            else
            {
                Response.Write("<script>alert('修改失败');</script>");
            }
        }

        protected void ddl_User_Year_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddl_User_Year.SelectedValue != "请选择")
            {
                tbx_User_Age.Text = (2017 - Convert.ToInt32(ddl_User_Year.SelectedValue)).ToString();
            }
        }

        protected void ddl_User_Month_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddl_User_Month.SelectedValue == "01" || ddl_User_Month.SelectedValue == "03" || ddl_User_Month.SelectedValue == "05" || ddl_User_Month.SelectedValue == "07" || ddl_User_Month.SelectedValue == "08" || ddl_User_Month.SelectedValue == "10" || ddl_User_Month.SelectedValue == "12")
            {
                ddl_User_31Days.Visible = true;
                ddl_User_31Days.SelectedIndex = 0;
                ddl_User_30Days.Visible = false;
                ddl_User_29Days.Visible = false;
                ddl_User_28Days.Visible = false;
                return;
            }
            if (ddl_User_Month.SelectedValue == "04" || ddl_User_Month.SelectedValue == "06" || ddl_User_Month.SelectedValue == "09" || ddl_User_Month.SelectedValue == "11")
            {
                ddl_User_30Days.Visible = true;
                ddl_User_30Days.SelectedIndex = 0;
                ddl_User_31Days.Visible = false;
                ddl_User_29Days.Visible = false;
                ddl_User_28Days.Visible = false;
                return;
            }
            if (ddl_User_Month.SelectedValue == "02")
            {
                if (ddl_User_Year.SelectedIndex == 0)
                {
                    Response.Write("<script>alert('请输入正确的月份')</script>");
                    ddl_User_Month.SelectedIndex = 0;
                    return;
                }
                int year = Convert.ToInt32(ddl_User_Year.SelectedValue);
                if (year % 4 == 0)
                {
                    ddl_User_29Days.Visible = true;
                    ddl_User_29Days.SelectedIndex = 0;
                    ddl_User_28Days.Visible = false;
                    ddl_User_30Days.Visible = false;
                    ddl_User_31Days.Visible = false;
                    return;
                }
                else
                {
                    ddl_User_28Days.Visible = true;
                    ddl_User_28Days.SelectedIndex = 0;
                    ddl_User_29Days.Visible = false;
                    ddl_User_30Days.Visible = false;
                    ddl_User_31Days.Visible = false;
                    return;
                }
            }
        }

        protected void GridView13_SelectedIndexChanged(object sender, EventArgs e)
        {
            string english = this.GridView13.Rows[this.GridView13.SelectedIndex].Cells[0].Text.ToString();
            string chinese = this.GridView13.Rows[this.GridView13.SelectedIndex].Cells[1].Text.ToString();
            int result = Business.StudentBusiness.User_CheckNewFavoriteWord(((UserInfo)Session["user"]).UserID, english, chinese);
            if (result > 0)
            {
                Response.Write("<script>alert('您已经收藏过该单词，不用再收藏')</script>");
            }
            else
            {
                result = Business.StudentBusiness.User_InsertNewFavoriteWord(((UserInfo)Session["user"]).UserID, english, chinese);
                if (result == 1)
                {
                    Response.Write("<script>alert('收藏成功')</script>");
                }
                else
                {
                    Response.Write("<script>alert('收藏失败！')</script>");
                }
            }
        }

        protected void btn_ModifyPassWord_Click(object sender, EventArgs e)
        {
            if (tbx_OldPwd.Text.Trim() == "")
            {
                Response.Write("<script>alert('旧密码不能为空')</script>");
                return;
            }
            if (tbx_NewPwd.Text.Trim().Length > 15 || tbx_NewPwd.Text.Trim().Length < 6)
            {
                Response.Write("<script>alert('新密码的字符在6-15之间')</script>");
                return;
            }
            if (tbx_NewPwd.Text.Trim() == "" || tbx_ConfirmNewPwd.Text.Trim() == "")
            {
                Response.Write("<script>alert('新密码信息不能为空')</script>");
                return;
            }
            if (tbx_NewPwd.Text.Trim() != tbx_ConfirmNewPwd.Text.Trim())
            {
                Response.Write("<script>alert('新密码信息不一致')</script>");
                return;
            }
            if (Session["user"] != null)
            {
                int result = Business.StudentBusiness.OldPassWordCheck(tbx_OldPwd.Text.Trim());
                if (result <= 0)
                {
                    Response.Write("<script>alert('旧密码错误，请重新输入！')</script>");
                    return;
                }
                else
                {
                    int result2 = Business.StudentBusiness.ChangePassword(tbx_NewPwd.Text.Trim(), ((UserInfo)(Session["User"])));

                    if (result2 == 1)
                    {
                        Session.Remove("User");
                        Response.Write("<script>alert('密码修改成功！请重新登录！');window.location.href='MainPage.aspx'</script>");

                    }
                    else
                    {
                        Response.Write("<script>alert('密码修改失败！');</script>");
                    }
                }
            }



        }

        protected void btn_Favorite_Click(object sender, EventArgs e)
        {
            int check = Business.StudentBusiness.CheckFavoriteWord(((UserInfo)Session["user"]).UserID);
            if (check <= 0)
            {
                Response.Write("<script>alert('收藏夹的内容为空')</script>");
                return;
            }
            MultiView_User.SetActiveView(View_User_MyFavorite);
            DataTable dt = Business.StudentBusiness.User_GetMyFavoriteByUserID(((UserInfo)Session["user"]).UserID);
            this.GridView19.DataSource = dt;
            this.GridView19.DataBind();
        }

        protected void btn_Admin_StudentInfo_Search_Age_Click(object sender, EventArgs e)
        {
            try
            {
                if (tbx_Admin_Age.Text.Trim() == "")
                {
                    Response.Write("<script>alert('年龄信息不能为空')</script>");
                    return;
                }
                DataTable dt = Business.AdminBusiness.Admin_SelectAllUserInfoByAge(tbx_Admin_Age.Text.Trim());
                if (dt.Rows.Count == 0 || dt == null)
                {
                    Response.Write("<script>alert('未搜索到相关记录')</script>");
                    tbx_Admin_Age.Text = "";
                    return;
                }
                this.GridView15.DataSource = dt;
                this.GridView15.DataBind();
            }
            catch
            {
                Response.Write("<script>alert('您输入的年龄信息有误')</script>");
                tbx_Admin_Age.Text = "";
            }
            
        }

        protected void btn_RegisterNewAdmin_Click(object sender, EventArgs e)
        {
            if (tbx_RegisterAdmin_AdminName.Text.Trim() == "")
            {
                Response.Write("<script>alert('管理员姓名不能为空')</script>");
                return;
            }
            if (tbx_RegisterAdmin_AdminPassword.Text.Trim() == "" || tbx_RegisterAdmin_ConfirmPassword.Text.Trim() == "")
            {
                Response.Write("<script>alert('密码信息不能为空')</script>");
                return;
            }
            if (tbx_RegisterAdmin_AdminPassword.Text.Trim().Length > 15 || tbx_RegisterAdmin_AdminPassword.Text.Trim().Length < 6)
            {
                Response.Write("<script>alert('密码长度在6-15之间')</script>");
                return;
            }
            if (tbx_RegisterAdmin_AdminName.Text.Trim().Length > 20)
            {
                Response.Write("<script>alert('管理员姓名在20个字符以内')</script>");
                return;
            }
            if (tbx_RegisterAdmin_AdminPassword.Text.Trim() != tbx_RegisterAdmin_ConfirmPassword.Text.Trim())
            {
                Response.Write("<script>alert('密码输入不一致')</script>");
                return;
            }
            int adminid = 11111;  
            DataTable dt = Business.SuperAdminBusiness.SuperAdmin_SelectAdminInfo();
            int length = (dt.Rows[0]["AdminID"].ToString().Length) - 1;
            int count = dt.Rows.Count;
            for (int i = 0; i < count; i++)
            {
                int curid = int.Parse(dt.Rows[i]["AdminID"].ToString().Substring(1, length)); 
                if (adminid == curid)
                {
                    adminid++;
                }
                else
                {
                    break;   
                }
            }
            string newadminid = "A" + System.Convert.ToString(adminid).PadLeft(length, '0');   
            int result = Business.SuperAdminBusiness.SuperAdmin_InsertNewAdmin(newadminid, tbx_RegisterAdmin_AdminName.Text.Trim(), tbx_RegisterAdmin_AdminPassword.Text.Trim());
            if (result == 1)
            {
                Response.Write("<script>alert('注册成功！" + "管理员ID号为：" + newadminid + " ')</script>");
                DataTable dt2 = Business.SuperAdminBusiness.SuperAdmin_SelectAdminInfo();
                MultiView_Admin.SetActiveView(View_SuperAdmin_AdminInfo);
                tbx_SuperAdmin_AdminInfo.Text = "";
                rbl_type_AdminSearch.SelectedIndex = 0;
                this.GridView18.DataSource = dt2;
                this.GridView18.DataBind();
            }
            else
            {
                Response.Write("<script>alert('注册失败！请检查数据库中的相关参数')</script>");
            }

        }

        protected void btn_Admin_ChangePwd_Click(object sender, EventArgs e)
        {
            if (tbx_Admin_OldPwd.Text.Trim() == "")
            {
                Response.Write("<script>alert('旧密码不能为空')</script>");
                return;
            }
            if (tbx_Admin_NewPwd.Text.Trim().Length > 15 || tbx_Admin_NewPwd.Text.Trim().Length < 6)
            {
                Response.Write("<script>alert('密码长度必须在6-15个字符之间')</script>");
                return;
            }
            if (tbx_Admin_NewPwd.Text.Trim() == "" || tbx_Admin_ConfirmPwd.Text.Trim() == "")
            {
                Response.Write("<script>alert('新密码信息填写不完整')</script>");
                return;
            }
            if (tbx_Admin_NewPwd.Text.Trim() != tbx_Admin_ConfirmPwd.Text.Trim())
            {
                Response.Write("<script>alert('新密码信息不匹配')</script>");
                return;
            }
            int result = Business.AdminBusiness.OldPassWordCheck(tbx_Admin_OldPwd.Text.Trim(), ((AdminInfo)Session["admin"]).AdminID);
            if (result <= 0)
            {
                Response.Write("<script>alert('旧密码输入错误，请重新输入')</script>");
                return;
            }
            if (result > 0)
            {
                int result2 = Business.AdminBusiness.ChangePassword(tbx_Admin_NewPwd.Text.Trim(), (AdminInfo)Session["admin"]);
                if (result2 == 1)
                {
                    Response.Write("<script>alert('密码修改成功，请重新登录！');window.location.href='Login.aspx'</script>");

                }
                else
                {
                    Response.Write("<script>alert('出现不可预见的错误！请及时联系超级管理员')</script>");
                }
            }

        }

        protected void btn_SuperAdmin_ChangePwd_Click(object sender, EventArgs e)
        {
            if (tbx_SuperAdmin_OldPwd.Text.Trim() == "")
            {
                Response.Write("<script>alert('旧密码不能为空')</script>");
                return;
            }
            if (tbx_SuperAdmin_NewPwd.Text.Trim().Length > 15 || tbx_SuperAdmin_NewPwd.Text.Trim().Length < 6)
            {
                Response.Write("<script>alert('密码长度必须在6-15个字符之间')</script>");
                return;
            }
            if (tbx_SuperAdmin_NewPwd.Text.Trim() == "" || tbx_SuperAdmin_ConfirmPwd.Text.Trim() == "")
            {
                Response.Write("<script>alert('新密码信息填写不完整')</script>");
                return;
            }
            if (tbx_SuperAdmin_NewPwd.Text.Trim() != tbx_SuperAdmin_ConfirmPwd.Text.Trim())
            {
                Response.Write("<script>alert('新密码信息不匹配')</script>");
                return;
            }
            int result = Business.SuperAdminBusiness.OldPassWordCheck(tbx_SuperAdmin_OldPwd.Text.Trim(), ((SuperAdminInfo)Session["superadmin"]).SuperAdminID);
            if (result <= 0)
            {
                Response.Write("<script>alert('旧密码输入错误，请重新输入')</script>");
                return;
            }
            if (result > 0)
            {
                int result2 = Business.SuperAdminBusiness.ChangePassword(tbx_SuperAdmin_NewPwd.Text.Trim(), (SuperAdminInfo)Session["superadmin"]);
                if (result2 == 1)
                {
                    Response.Write("<script>alert('密码修改成功，请重新登录！');window.location.href='Login.aspx'</script>");

                }
                else
                {
                    Response.Write("<script>alert('出现不可预见的错误！请检查数据库')</script>");
                }
            }
        }

        protected void btn_AllFavorite_Click(object sender, EventArgs e)
        {
            MultiView_Admin.SetActiveView(View_Admin_UserFavorite);
            DataTable dt = Business.AdminBusiness.Admin_SelectAllFavorite();
            tbx_Admin_UserFavorite.Text = "";
            this.GridView20.DataSource = dt;
            this.GridView20.DataBind();
        }

        protected void GridView20_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            if (e.RowIndex >= 0)
            {
                string userid = this.GridView20.Rows[e.RowIndex].Cells[0].Text.ToString();
                string english = this.GridView20.Rows[e.RowIndex].Cells[1].Text.ToString();
                string chinese = this.GridView20.Rows[e.RowIndex].Cells[2].Text.ToString();
                int result = Business.AdminBusiness.Admin_DeleteFavoriteWord(userid, english, chinese);
                if (result > 0)
                {
                    Response.Write("<script>alert('删除成功！')</script>");
                }
                else
                {
                    Response.Write("<script>alert('出现不可预见的错误，请检查数据库！')</script>");
                }
                this.GridView20.EditIndex = -1;
                DataTable dt = Business.AdminBusiness.Admin_SelectAllFavorite();
                this.GridView20.DataSource = dt;
                this.GridView20.DataBind();
            }
        }

        protected void btn_PwdAnswer_Click(object sender, EventArgs e)
        {
            MultiView_Admin.SetActiveView(View_Admin_PwdAnswer);
            DataTable dt = Business.AdminBusiness.Admin_SelectAllPwdAnswer();
            tbx_Admin_UserID.Text = "";
            tbx_DeletePA_UserID.Text = "";
            this.GridView21.DataSource = dt;
            this.GridView21.DataBind();
        }



        protected void btn_SearchPwdAnswer_Click(object sender, EventArgs e)
        {
            if (tbx_Admin_UserID.Text.Trim() == "")
            {
                Response.Write("<script>alert('密保答案不能为空')</script>");
                tbx_Admin_UserID.Text = "";
                return;
            }
            try
            {
                DataTable dt = Business.AdminBusiness.Admin_SearchPwdAnswerByUserID(tbx_Admin_UserID.Text.Trim());
                if (dt == null || dt.Rows.Count == 0)
                {
                Response.Write("<script>alert('未找到相关记录')</script>");
                tbx_Admin_UserID.Text = "";
                return;
                }
            this.GridView21.DataSource = dt;
            this.GridView21.DataBind();
            }
            catch
            {
                Response.Write("<script>alert('输入的密保信息问题有误')</script>");
                tbx_Admin_UserID.Text = "";
                return;
            }
            
            
        }

        protected void btn_AllPwdAnswer_Click(object sender, EventArgs e)
        {
            MultiView_Admin.SetActiveView(View_Admin_PwdAnswer);
            DataTable dt = Business.AdminBusiness.Admin_SelectAllPwdAnswer();
            tbx_Admin_UserID.Text = "";
            tbx_DeletePA_UserID.Text = "";
            this.GridView21.DataSource = dt;
            this.GridView21.DataBind();
        }

        protected void GridView21_SelectedIndexChanged(object sender, EventArgs e)
        {

            string answerid = this.GridView21.Rows[this.GridView21.SelectedIndex].Cells[0].Text;
            string question = this.GridView21.Rows[this.GridView21.SelectedIndex].Cells[1].Text;
            string answer = this.GridView21.Rows[this.GridView21.SelectedIndex].Cells[2].Text;
            string userid = this.GridView21.Rows[this.GridView21.SelectedIndex].Cells[3].Text;
            MultiView_Admin.SetActiveView(View_Admin_ModifyPwdAnswer);
            lbl_AnswerID.Text = answerid;
            lbl_Question.Text = question;
            lbl_User_UserID.Text = userid;
            tbx_User_Answer.Text = answer;
            tbx_User_Answer.Text = "";
        }

        protected void btn_BackToPwdAnswer_Click(object sender, EventArgs e)
        {
            MultiView_Admin.SetActiveView(View_Admin_PwdAnswer);
            DataTable dt = Business.AdminBusiness.Admin_SelectAllPwdAnswer();
            this.GridView21.DataSource = dt;
            this.GridView21.DataBind();
        }

        protected void btn_ModifyAnswer_Click(object sender, EventArgs e)
        {
            int result = Business.AdminBusiness.Admin_ChangePwdAnswerByAnswerID(lbl_AnswerID.Text.Trim(), tbx_User_Answer.Text.Trim());
            if (result == 1)
            {
                Response.Write("<script>alert('修改成功')</script>");
                MultiView_Admin.SetActiveView(View_Admin_PwdAnswer);
                DataTable dt = Business.AdminBusiness.Admin_SelectAllPwdAnswer();
                this.GridView21.DataSource = dt;
                this.GridView21.DataBind();
            }
            else
            {
                Response.Write("<script>alert('出现不可预见的错误，请检查数据库')</script>");
            }
        }

        protected void tbx_InsertNewAdmin_Click(object sender, EventArgs e)
        {
            MultiView_Admin.SetActiveView(View_SuperAdmin_RegisterAdmin);
            tbx_RegisterAdmin_AdminName.Text = "";
            tbx_RegisterAdmin_AdminPassword.Text = "";
            tbx_RegisterAdmin_ConfirmPassword.Text = "";
        }


        protected void GridView12_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            if (e.RowIndex >= 0)
            {
                string cname = this.GridView12.Rows[e.RowIndex].Cells[0].Text.ToString();
                int r = Business.StudentBusiness.User_DeleteCollection(((UserInfo)Session["user"]).UserID, cname);
                if (r == 1)
                {
                    Response.Write("<script>alert('删除成功！')</script>");
                    DataTable dt = Business.StudentBusiness.User_GetCollectionsByUserID(((UserInfo)Session["user"]).UserID);
                    if (dt == null || dt.Rows.Count <= 0)
                    {
                        Response.Write("<script>alert('您还没有学习集，为您转到创建学习集页面')</script>");
                        MultiView_User.SetActiveView(View_User_CreateCollection);

                    }
                    else
                    {
                        DataTable dt2 = Business.StudentBusiness.User_GetCollectionsByUserID(((UserInfo)Session["user"]).UserID);
                        this.GridView12.DataSource = dt2;
                        this.GridView12.DataBind();
                    }
                }
                else
                {
                    Response.Write("<script>alert('删除失败！')</script>");
                }
                DataTable dt3 = Business.StudentBusiness.User_GetCollectionsByUserID(((UserInfo)Session["user"]).UserID);
                this.GridView12.DataSource = dt3;
                this.GridView12.DataBind();
            }
        }

        protected void GridView18_SelectedIndexChanged(object sender, EventArgs e)
        {
            string adminid = this.GridView18.Rows[this.GridView18.SelectedIndex].Cells[0].Text.ToString();
            string adminname = this.GridView18.Rows[this.GridView18.SelectedIndex].Cells[1].Text.ToString();
            string adminpwd = this.GridView18.Rows[this.GridView18.SelectedIndex].Cells[2].Text.ToString();
            MultiView_Admin.SetActiveView(View_SuperAdmin_ModifyAdminInfo);
            lbl_AdminID.Text = adminid;
            tbx_Admin_AdminName.Text = adminname;
        }

        protected void btn_ModifyPwdInfo_Click(object sender, EventArgs e)
        {
            if (tbx_Admin_AdminName.Text == "")
            {
                Response.Write("<script>alert('管理员姓名不能为空')</script>");
                return;
            }
            if (tbx_AdminPwd.Text == "" || tbx_AdminConfirmPwd.Text == "")
            {
                Response.Write("<script>alert('密码信息不能为空')</script>");
                return;
            }
            if (tbx_AdminPwd.Text != tbx_AdminConfirmPwd.Text)
            {
                Response.Write("<script>alert('密码输入不一致')</script>");
                return;
            }
            AdminInfo ai = new AdminInfo();
            ai.AdminID = lbl_AdminID.Text.Trim();
            ai.AdminName = tbx_Admin_AdminName.Text.Trim();
            ai.AdminPassword = tbx_AdminConfirmPwd.Text.Trim();
            int result = Business.SuperAdminBusiness.SuperAdmin_UpdateAdminInfo(ai);
            if (result == 1)
            {
                Response.Write("<script>alert('修改成功')</script>");
            }
            else
            {
                Response.Write("<script>alert('修改管理员信息时遇到了不可预见的错误，请及时联系管理员！')</script>");
            }
            MultiView_Admin.SetActiveView(View_SuperAdmin_AdminInfo);
            DataTable dt = Business.SuperAdminBusiness.SuperAdmin_SelectAdminInfo();
            GridView18.DataSource = dt;
            GridView18.DataBind();
        }

        protected void GridView18_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            if (e.RowIndex > 0)
            {
                string adminid = this.GridView18.Rows[e.RowIndex].Cells[0].Text.ToString();
                int result = Business.SuperAdminBusiness.SuperAdmin_DeleteAdmin(adminid);
                if (result == 1)
                {
                    Response.Write("<script>alert('删除成功！')</script>");
                }
                else
                {
                    Response.Write("<script>alert('出现不可预见的错误，请检查数据库！')</script>");
                }
                DataTable dt = Business.SuperAdminBusiness.SuperAdmin_SelectAdminInfo();
                this.GridView18.DataSource = dt;
                this.GridView18.DataBind();
            }
        }

        protected void btn_Search_SuperAdmin_AdminInfo_Click(object sender, EventArgs e)
        {
            if (tbx_SuperAdmin_AdminInfo.Text.Trim() == "")
            {
                Response.Write("<script>alert('搜索内容不能为空')</script>");
                return;
            }
            if (rbl_type_AdminSearch.SelectedIndex == -1)
            {
                Response.Write("<script>alert('搜索类型不能为空')</script>");
                return;
            }
            if (rbl_type_AdminSearch.SelectedIndex == 0)
            {
                DataTable dt = Business.SuperAdminBusiness.SuperAdmin_SelectAdminInfoByAdminID(tbx_SuperAdmin_AdminInfo.Text.Trim());
                if (dt == null || dt.Rows.Count == 0)
                {
                Response.Write("<script>alert('未搜索到相关记录')</script>");
                return;
                }
                this.GridView18.DataSource = dt;
                this.GridView18.DataBind();
            }
            if (rbl_type_AdminSearch.SelectedIndex == 1)
            {
                DataTable dt = Business.SuperAdminBusiness.SuperAdmin_SelectAdminInfoByAdminName(tbx_SuperAdmin_AdminInfo.Text.Trim());
                if (dt == null || dt.Rows.Count == 0)
                {
                    Response.Write("<script>alert('未搜索到相关记录')</script>");
                    return;
                }
                this.GridView18.DataSource = dt;
                this.GridView18.DataBind();
            }
            
        }

        protected void btn_Search_Admin_UserFavorite_Click(object sender, EventArgs e)
        {
            if (this.tbx_Admin_UserFavorite.Text.Trim() == "")
            {
                Response.Write("<script>alert('搜索内容不能为空')</script>");
                return;
            }
            DataTable dt = Business.AdminBusiness.Admin_SelectFavoriteByUserID(this.tbx_Admin_UserFavorite.Text.Trim());
            if (dt.Rows.Count == 0 || dt == null)
            {
                Response.Write("<script>alert('未找到相关记录')</script>");
                this.tbx_Admin_UserFavorite.Text = "";
                return;
            }
            this.GridView20.DataSource = dt;
            this.GridView20.DataBind();
            this.tbx_Admin_UserFavorite.Text = "";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (tbx_DeletePA_UserID.Text.Trim() == "")
            {
                Response.Write("<script>alert('学生ID不能为空')</script>");
                return;
            }
            string userid = tbx_DeletePA_UserID.Text.Trim();
            int result = Business.AdminBusiness.Admin_DeletePwdAnswerByUserID(userid);
            if (result == 3)
            {
                Response.Write("<script>alert('删除成功')</script>");
            }
            else
            {
                Response.Write("<script>alert('学生ID信息有误，删除失败')</script>");
            }
            MultiView_Admin.SetActiveView(View_Admin_PwdAnswer);
            DataTable dt = Business.AdminBusiness.Admin_SelectAllPwdAnswer();
            this.GridView21.DataSource = dt;
            this.GridView21.DataBind();
        }

        protected void btn_Search_CollectionsInfo_Click(object sender, EventArgs e)
        {
            if (tbx_Admin_UserID_CollectionsInfo.Text.Trim()=="")
            {
                Response.Write("<script>alert('学生ID不能为空')</script>");
                return;
            }
            DataTable dt = Business.AdminBusiness.Admin_SelectCollectionsByUserID(tbx_Admin_UserID_CollectionsInfo.Text.Trim());
            if (dt == null || dt.Rows.Count <= 0)
            {
                Response.Write("<script>alert('未搜索到相关记录')</script>");
                return;
            }
            this.GridView16.DataSource = dt;
            this.GridView16.DataBind();
            tbx_Admin_UserID_CollectionsInfo.Text = "";
        }

        
       
    }

}

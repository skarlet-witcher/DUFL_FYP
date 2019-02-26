using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace English_Learning_Website
{
    public partial class ForgetPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       

        protected void btn_BackToLogin_Click(object sender, EventArgs e)
        {
            Response.Write("<script>window.location.href='Login.aspx'</script>");
        }

        protected void btn_ForgetPassword_Check_Click(object sender, EventArgs e)
        {
            if (ddl_ForgetPassword.SelectedValue == "请选择")
            {
                Response.Write("<script>alert('必须选择密保问题')</script>");
                return;
            }
            if (tbx_ForgetPassword_Answer.Text.Trim() == "")
            {
                Response.Write("<script>alert('密保问题答案不能为空！')</script>");
                return;
            }
            int result = Business.StudentBusiness.User_CheckAnswer(ddl_ForgetPassword.SelectedValue, tbx_ForgetPassword_Answer.Text.Trim(), tbx_ForgetPassword_UserID.Text.Trim());
            if (result == 1)
            {
                DataTable result2 = Business.StudentBusiness.User_FindPassword(tbx_ForgetPassword_UserID.Text.Trim());
                string pwd = result2.Rows[0]["UserPassword"].ToString();
                Response.Write("<script>alert('密码是：" + pwd + " 请牢记！');window.location.href='Login.aspx'</script>");
            }
            else
            {
                Response.Write("<script>alert('密保问题或用户ID有误')</script>");
            }
            
        }

        protected void btn_ForgetPassword_Admin_Check_Click(object sender, EventArgs e)
        {
            if (tbx_ForgetPassword_AdminID.Text.Trim() == "")
            {
                Response.Write("<script>alert('管理员ID不能为空')</script>");
                return;
            }
            if (tbx_ForgetPassword_AdminName.Text.Trim() == "")
            {
                Response.Write("<script>alert('管理员姓名不能为空')</script>");
                return;
            }
            DataTable dt = Business.AdminBusiness.Admin_FindPassword(tbx_ForgetPassword_AdminID.Text.Trim(), tbx_ForgetPassword_AdminName.Text.Trim());
            string pwd;
            try
            {
                 pwd = dt.Rows[0]["AdminPassword"].ToString();
            }
            catch
            {
                Response.Write("<script>alert('管理员ID或管理员姓名有误');</script>");
                return;
            }
            Response.Write("<script>alert('密码是：" + pwd + " 请牢记！');window.location.href='Login.aspx'</script>");
        }

        protected void ddl_ForgetPassword_Role_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddl_ForgetPassword_Role.SelectedValue == "学生")
            {
                MultiView1.SetActiveView(View_ForgetPassword_Student);
                ddl_ForgetPassword.SelectedIndex = 0;
                tbx_ForgetPassword_Answer.Text = "";
                tbx_ForgetPassword_UserID.Text = "";
            }
            if (ddl_ForgetPassword_Role.SelectedValue == "管理员")
            {
                MultiView1.SetActiveView(View_ForgetPassword_Admin);
                tbx_ForgetPassword_AdminID.Text = "";
                tbx_ForgetPassword_AdminName.Text = "";
            }
        }

        protected void btn_GoToLogin_Click(object sender, EventArgs e)
        {
            Response.Write("<script>window.location.href='Login.aspx'</script>");
        }

        protected void btn_GoToLogin2_Click(object sender, EventArgs e)
        {
            Response.Write("<script>window.location.href='Login.aspx'</script>");              
        }

        
    }
}
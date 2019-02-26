using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
#pragma warning disable CS0246 // The type or namespace name 'Entity' could not be found (are you missing a using directive or an assembly reference?)
#pragma warning disable CS0246 // The type or namespace name 'Entity' could not be found (are you missing a using directive or an assembly reference?)
using Entity;
#pragma warning restore CS0246 // The type or namespace name 'Entity' could not be found (are you missing a using directive or an assembly reference?)
#pragma warning restore CS0246 // The type or namespace name 'Entity' could not be found (are you missing a using directive or an assembly reference?)
#pragma warning disable CS0246 // The type or namespace name 'DataAccess' could not be found (are you missing a using directive or an assembly reference?)
#pragma warning disable CS0246 // The type or namespace name 'DataAccess' could not be found (are you missing a using directive or an assembly reference?)
using DataAccess;
#pragma warning restore CS0246 // The type or namespace name 'DataAccess' could not be found (are you missing a using directive or an assembly reference?)
#pragma warning restore CS0246 // The type or namespace name 'DataAccess' could not be found (are you missing a using directive or an assembly reference?)
#pragma warning disable CS0246 // The type or namespace name 'Business' could not be found (are you missing a using directive or an assembly reference?)
#pragma warning disable CS0246 // The type or namespace name 'Business' could not be found (are you missing a using directive or an assembly reference?)
using Business;
#pragma warning restore CS0246 // The type or namespace name 'Business' could not be found (are you missing a using directive or an assembly reference?)
#pragma warning restore CS0246 // The type or namespace name 'Business' could not be found (are you missing a using directive or an assembly reference?)
using System.Data;

namespace English_Learning_Website
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Login_Click(object sender, EventArgs e)
        {
            if (this.tbx_UserID.Text.Trim()=="")
            {
                Response.Write("<script>alert('用户ID不能为空！')</script>");
                return;
            }
            if (this.tbx_PassWord.Text.Trim()=="")
            {
                Response.Write("<script>alert('密码不能为空！')</script>");
                return;
            }
            if (tbx_UserID.Text.Length > 6)
            {
                Entity.UserInfo ui = new Entity.UserInfo();
                ui.UserID = this.tbx_UserID.Text.Trim();
                ui.UserPassWord = this.tbx_PassWord.Text.Trim();
                int result = Business.StudentBusiness.LoginCheck(ui);
                if (result == 0)
                {
                    Response.Write("<script>alert('用户名或密码错误！')</script>");
                    return;
                }
                else
                {
                    
                    DataTable dt = Business.StudentBusiness.GetUserInfoByUserID(ui);
                    ui.UserName = dt.Rows[0]["username"].ToString();
                    ui.Birthday = dt.Rows[0]["Birthday"].ToString();
                    ui.Email = dt.Rows[0]["Email"].ToString();
                    ui.Age = dt.Rows[0]["Age"].ToString();
                    Session["user"] = ui;    
                    WebForm1.MultiviewSwitcher = 2; 
                    Response.Write("<script>alert('欢迎进入日语学习系统！');window.location.href = 'MainPage.aspx'</script>");  
                }
            }
            else if (tbx_UserID.Text.Length == 3)
            {
                Entity.SuperAdminInfo sa = new SuperAdminInfo();
                sa.SuperAdminID = tbx_UserID.Text.Trim();
                sa.SuperAdminPassWord = tbx_PassWord.Text.Trim();
                int result = Business.SuperAdminBusiness.SuperAdminLoginCheck(sa);
                if (result == 1)
                {
                    
                    Session["superadmin"] = sa;
                    WebForm1.MultiviewSwitcher = 4;
                    Response.Write("<script>alert('欢迎进入日语学习系统！');window.location.href = 'MainPage.aspx'</script>");  
                }
                else
                {
                    Response.Write("<script>alert('用户名或密码错误！')</script>");
                    return;
                }
            }
            else
            {
                Entity.AdminInfo ai = new AdminInfo();
                ai.AdminID = tbx_UserID.Text.Trim();
                ai.AdminPassword = tbx_PassWord.Text.Trim();
                int result = Business.AdminBusiness.AdminLoginCheck(ai);
                if (result == 0)
                {
                    Response.Write("<script>alert('用户名或密码错误！')</script>");
                    return;
                }
                else
                {
                    
                    DataTable dt = Business.AdminBusiness.SelectAdminInfoByAdminID(ai);
                    ai.AdminName = dt.Rows[0]["AdminName"].ToString();
                    Session["admin"] = ai;
                    WebForm1.MultiviewSwitcher = 3; 
                    Response.Write("<script>alert('欢迎进入日语学习系统！');window.location.href = 'MainPage.aspx'</script>");  
                }
            }
            
        }

        protected void btn_Register_Click(object sender, EventArgs e)
        {
            Response.Write("<script>window.location.href='RegisterForStudent.aspx'</script>");
        }

        protected void btn_ForgetPassword_Click(object sender, EventArgs e)
        {
            Response.Write("<script>window.location.href='ForgetPassword.aspx'</script>");
        }
    }
}
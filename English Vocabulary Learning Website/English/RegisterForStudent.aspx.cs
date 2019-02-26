using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
#pragma warning disable CS0246 // The type or namespace name 'Entity' could not be found (are you missing a using directive or an assembly reference?)
#pragma warning disable CS0246 // The type or namespace name 'Entity' could not be found (are you missing a using directive or an assembly reference?)
using Entity;
#pragma warning restore CS0246 // The type or namespace name 'Entity' could not be found (are you missing a using directive or an assembly reference?)
#pragma warning restore CS0246 // The type or namespace name 'Entity' could not be found (are you missing a using directive or an assembly reference?)
#pragma warning disable CS0246 // The type or namespace name 'Business' could not be found (are you missing a using directive or an assembly reference?)
#pragma warning disable CS0246 // The type or namespace name 'Business' could not be found (are you missing a using directive or an assembly reference?)
using Business;
#pragma warning restore CS0246 // The type or namespace name 'Business' could not be found (are you missing a using directive or an assembly reference?)
#pragma warning restore CS0246 // The type or namespace name 'Business' could not be found (are you missing a using directive or an assembly reference?)
#pragma warning disable CS0246 // The type or namespace name 'DataAccess' could not be found (are you missing a using directive or an assembly reference?)
#pragma warning disable CS0246 // The type or namespace name 'DataAccess' could not be found (are you missing a using directive or an assembly reference?)
using DataAccess;
#pragma warning restore CS0246 // The type or namespace name 'DataAccess' could not be found (are you missing a using directive or an assembly reference?)
#pragma warning restore CS0246 // The type or namespace name 'DataAccess' could not be found (are you missing a using directive or an assembly reference?)
using System.Data;

namespace English_Learning_Website
{
    public partial class Register : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        private string calculateUserID() 
        {
            int _userid = 140440401;
            DataTable dt = Business.StudentBusiness.Register_NewUserID();
            int length = dt.Rows[0]["userid"].ToString().Length;
            int count = dt.Rows.Count;
            for (int i = 0; i < count; i++)
            {
                int curid = int.Parse(dt.Rows[i]["userid"].ToString());
                if (_userid == curid)
                {
                    _userid++;
                }
                else
                {
                    break;  
                }
            }
            string newid = System.Convert.ToString(_userid).PadLeft(length, '0');
            return newid;
        }
        private string calculateAnswerID()
        {
            int _answerid = 00001;
            DataTable dt = Business.StudentBusiness.Register_NewAnswerID();
            int length = dt.Rows[0]["answerid"].ToString().Length;
            int count = dt.Rows.Count;
            for (int i = 0; i < count; i++)
            {
                int curid = int.Parse(dt.Rows[i]["answerid"].ToString());
                if (_answerid == curid)
                {
                    _answerid++;
                }
                else
                {
                    break;
                }
            }
            string newid = System.Convert.ToString(_answerid).PadLeft(length, '0');
            return newid;
        }

        protected void btn_Submit_Click(object sender, EventArgs e)
        {
            if (this.ddl_28Days.SelectedValue == "请选择" && this.ddl_29Days.SelectedValue == "请选择" && this.ddl_30Days.SelectedValue == "请选择" && this.ddl_31Days.SelectedValue == "请选择")
            {
                Response.Write("<script>alert('请选择正确的日期')</script>");
                return;
            }
            if (Page.IsValid)
            {
                string day;
                if (this.ddl_28Days.Visible == true)
                {
                    day = ddl_28Days.SelectedValue.ToString();
                }
                else if (this.ddl_29Days.Visible == true)
                {
                    day = ddl_29Days.SelectedValue.ToString();
                }
                else if (this.ddl_30Days.Visible == true)
                {
                    day = ddl_30Days.SelectedValue.ToString();
                }
                else
                {
                    day = ddl_31Days.SelectedValue.ToString();
                }
                UserInfo ui = new UserInfo();
                ui.UserName = this.tbx_UserName.Text.Trim();
                ui.UserPassWord = this.tbx_PassWord.Text.Trim();
                ui.Birthday = string.Format("{0}-{1}-{2}", this.ddl_Year.SelectedValue.ToString(), this.ddl_Month.SelectedValue.ToString(), day);
                ui.Email = tbx_Email.Text.Trim();
                ui.Gender = ddl_Gender.SelectedValue.ToString();
                ui.Age = (2017-Convert.ToInt32(ddl_Year.SelectedValue)).ToString();
                string newid = calculateUserID();
                ui.UserID = newid;
                int result = Business.StudentBusiness.RegisterForStudent(ui);  
                PwdAnswer pa1 = new PwdAnswer();
                pa1.QuestionName = lbl_Q1.Text.Trim();
                pa1.UserID = ui.UserID.ToString();
                pa1.Answer = tbx_A1.Text.Trim();
                string newAnswerID = calculateAnswerID();
                pa1.AnswerID = newAnswerID;
                int result2 = Business.StudentBusiness.Register_NewPwdAnswer(pa1);
                PwdAnswer pa2 = new PwdAnswer();
                pa2.QuestionName = lbl_Q2.Text.Trim();
                pa2.UserID = ui.UserID.ToString();
                pa2.Answer = tbx_A2.Text.Trim();
                string newAnswerID2 = calculateAnswerID();
                pa2.AnswerID = newAnswerID2;
                result2 = Business.StudentBusiness.Register_NewPwdAnswer(pa2);
                PwdAnswer pa3 = new PwdAnswer();
                pa3.QuestionName = lbl_Q3.Text.Trim();
                pa3.UserID = ui.UserID.ToString();
                pa3.Answer = tbx_A3.Text.Trim();
                string newAnswerID3 = calculateAnswerID();
                pa3.AnswerID = newAnswerID3;
                result2 = Business.StudentBusiness.Register_NewPwdAnswer(pa3);
                result2 = Business.StudentBusiness.Register_CheckNewPwdAnswer(newid);
                if (result > 0 && result2 == 3)
                {
                    Response.Write("<script>alert('注册成功！" + "您的登录ID为" + newid + " 请牢记！" + "');window.location.href = 'Login.aspx'</script>");
                }
                else
                {
                    Response.Write("<script>alert('注册失败请重新注册')</script>");
                }



            }
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (this.tbx_PassWord.Text.Trim() != "")
            {
                string x = this.tbx_PassWord.Text.Trim();
                if (x.Length < 6)
                {
                    this.CustomValidator1.ErrorMessage = "密码长度不能小于6字符";
                    args.IsValid = false;
                }
                else if (x.Length > 15)
                {
                    this.CustomValidator1.ErrorMessage = "密码长度不能超过15字符";
                    args.IsValid = false;
                }
                else
                {
                    args.IsValid = true;
                }
            }
        }

        protected void CustomValidator2_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if(ddl_Gender.SelectedValue=="请选择")
            {
                this.CustomValidator2.ErrorMessage = "必须选择性别";
                args.IsValid = false;
            }
        }

        protected void CustomValidator3_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (this.ddl_Year.SelectedValue == "请选择")
            {
                this.CustomValidator3.ErrorMessage = "请选择正确的年份";
                args.IsValid = false;
            }
        }

        protected void CustomValidator4_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (this.ddl_Month.SelectedValue == "请选择")
            {
                this.CustomValidator4.ErrorMessage = "请选择正确的月份";
                args.IsValid = false;
            }
        }

        protected void ddl_Month_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddl_Month.SelectedValue == "01" || ddl_Month.SelectedValue == "03" || ddl_Month.SelectedValue == "05" || ddl_Month.SelectedValue == "07" || ddl_Month.SelectedValue == "08" || ddl_Month.SelectedValue == "10" || ddl_Month.SelectedValue == "12")
            {
                ddl_31Days.Visible = true;
                ddl_30Days.Visible = false;
                ddl_30Days.SelectedIndex = 0;
                ddl_29Days.Visible = false;
                ddl_29Days.SelectedIndex = 0;
                ddl_28Days.Visible = false;
                ddl_28Days.SelectedIndex = 0;
                return;
            }
            if (ddl_Month.SelectedValue == "04" || ddl_Month.SelectedValue == "06" || ddl_Month.SelectedValue == "09" || ddl_Month.SelectedValue == "11")
            {
                ddl_30Days.Visible = true;
                ddl_31Days.Visible = false;
                ddl_31Days.SelectedIndex = 0;
                ddl_29Days.Visible = false;
                ddl_29Days.SelectedIndex = 0;
                ddl_28Days.Visible = false;
                ddl_28Days.SelectedIndex = 0;
                return;
            }
            if (ddl_Month.SelectedValue == "02")
            {
                int year = Convert.ToInt32(ddl_Year.SelectedValue);
                if (year % 4 == 0)
                {
                    ddl_29Days.Visible = true;
                    ddl_28Days.Visible = false;
                    ddl_28Days.SelectedIndex = 0;
                    ddl_30Days.Visible = false;
                    ddl_30Days.SelectedIndex = 0;
                    ddl_31Days.Visible = false;
                    ddl_31Days.SelectedIndex = 0;
                    return;
                }
                else
                {
                    ddl_28Days.Visible = true;
                    ddl_29Days.Visible = false;
                    ddl_29Days.SelectedIndex = 0;
                    ddl_30Days.Visible = false;
                    ddl_30Days.SelectedIndex = 0;
                    ddl_31Days.Visible = false;
                    ddl_31Days.SelectedIndex = 0;
                    return;
                }
            }
        }

        protected void ddl_Year_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void btn_BackToFirstPage_Click(object sender, EventArgs e)
        {
            Response.Write("<script>window.location.href='FirstPage.aspx'</script>");
        }

       

      
    }
}
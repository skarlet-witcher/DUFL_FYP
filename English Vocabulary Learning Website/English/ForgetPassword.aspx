<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgetPassword.aspx.cs" Inherits="English_Learning_Website.ForgetPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1
        {
            width: 120%;
            margin-right: 37px;
        }
        .auto-style2
        {
        }
        .auto-style4
        {
            width: 495px;
            height: 23px;
            text-align: left;
        }
        .auto-style8 {
            text-align: left;
        }
        .auto-style13 {
            width: 495px;
            text-align: left;
        }
        .auto-style15 {
            width: 343px;
            text-align: left;
        }
        .auto-style16 {
            width: 506px;
            text-align: left;
        }
        .auto-style17 {
            width: 506px;
            height: 23px;
            text-align: left;
        }
    </style>
</head>
<body
    style="background-image:url('Images/zhuce.png')";
    >
    <form id="form1" runat="server">
    <div style="height: 173px; width: 581px">
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 选择你的角色&nbsp;
                    <asp:DropDownList ID="ddl_ForgetPassword_Role" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddl_ForgetPassword_Role_SelectedIndexChanged">
                        <asp:ListItem>请选择</asp:ListItem>
                        <asp:ListItem>学生</asp:ListItem>
                        <asp:ListItem>管理员</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
        </table>
        <br />
        <asp:MultiView ID="MultiView1" runat="server">
            <div class="auto-style8">
                &nbsp;&nbsp;
                <asp:View ID="View_ForgetPassword_Student" runat="server">
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 选择你的密保问题</td>
                            <td class="auto-style16">
                                <asp:DropDownList ID="ddl_ForgetPassword" runat="server">
                                    <asp:ListItem>请选择</asp:ListItem>
                                    <asp:ListItem>你父亲的名字是</asp:ListItem>
                                    <asp:ListItem>你母亲的名字是</asp:ListItem>
                                    <asp:ListItem>小学班主任的名字是</asp:ListItem>
                                </asp:DropDownList>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 密保问题答案</td>
                            <td class="auto-style17">
                                <asp:TextBox ID="tbx_ForgetPassword_Answer" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 用户ID</td>
                            <td class="auto-style16">
                                <asp:TextBox ID="tbx_ForgetPassword_UserID" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style13">&nbsp;</td>
                            <td class="auto-style16">
                                <asp:Button ID="btn_ForgetPassword_Check" runat="server" OnClick="btn_ForgetPassword_Check_Click" Text="查询" />
                                &nbsp;&nbsp;&nbsp;<asp:Button ID="btn_GoToLogin" runat="server" OnClick="btn_GoToLogin_Click" Text="返回登陆界面" />
&nbsp; </td>
                        </tr>
                    </table>
                </asp:View>
                <div class="auto-style8">
                    <br />
                </div>
                <asp:View ID="View_ForgetPassword_Admin" runat="server">
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style15">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 管理员ID</td>
                            <td>
                                <asp:TextBox ID="tbx_ForgetPassword_AdminID" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style15">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 管理员姓名</td>
                            <td>
                                <asp:TextBox ID="tbx_ForgetPassword_AdminName" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style15">&nbsp;</td>
                            <td class="auto-style8">
                                <asp:Button ID="btn_ForgetPassword_Admin_Check" runat="server" OnClick="btn_ForgetPassword_Admin_Check_Click" Text="查询" />
                                &nbsp;&nbsp;&nbsp;<asp:Button ID="btn_GoToLogin2" runat="server" OnClick="btn_GoToLogin2_Click" Text="返回登陆界面" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style15">&nbsp;</td>
                            <td class="auto-style8">&nbsp;</td>
                        </tr>
                    </table>
                </asp:View>
            </div>
        </asp:MultiView>
    
    </div>
    </form>
</body>
</html>

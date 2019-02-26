<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="English_Learning_Website.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style1"
        style="background-image:url('Images/login.png'); height: 781px;">
    
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 账号&nbsp;&nbsp;
        <asp:TextBox ID="tbx_UserID" runat="server" Width="156px"></asp:TextBox>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Text="密码"></asp:Label>
        &nbsp;&nbsp;
        <asp:TextBox ID="tbx_PassWord" runat="server" TextMode="Password" style="margin-left: 0px" Width="155px"></asp:TextBox>
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btn_Login" runat="server" OnClick="btn_Login_Click" Text="登录" style="background-color: #99CCFF; height: 23px;" BorderStyle="Double" />
        &nbsp;&nbsp;<asp:Button ID="btn_Register" runat="server" Text="注册" OnClick="btn_Register_Click" BorderStyle="Double" style="background-color: #99CCFF" />
    
        &nbsp;
        <asp:Button ID="btn_ForgetPassword" runat="server" OnClick="btn_ForgetPassword_Click" Text="忘记密码？" BorderStyle="Double" style="margin-left: 0px; background-color: #99CCFF" Width="81px" />
    
    </div>
    </form>
</body>
</html>

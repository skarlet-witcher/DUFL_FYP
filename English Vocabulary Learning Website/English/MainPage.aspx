<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="English_Learning_Website.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .hidden
        {
            display:none;
        }
        .auto-style1
        {
            width: 100%;
            height: 114px;
            margin-top: 0px;
        }
        .auto-style3
        {            
            width: 551px;
            height: 1px;
        }
        .auto-style4
        {
            height: 578px;
        }
        .auto-style12
        {
            width: 613px;
            height: 20px;
        }
        .auto-style13
        {
            height: 20px;
        }
        .auto-style14
        {
        }
        .auto-style15
        {
            height: 23px;
        }
        .auto-style16
        {
            width: 100%;
            margin-top: 0px;
        }
        .auto-style18
        {
            width: 565px;
            height: 20px;
        }
        .auto-style19
        {
            width: 287px;
        }
        .auto-style20
        {
            width: 287px;
            height: 25px;
        }
        .auto-style21
        {
            height: 25px;
        }
        .auto-style22 {
            text-align: center;
            height: 42px;
        }
        </style>
</head>
<body>
    
    <style type="text/css">
body,.content{
width:100%;
height:100%;
margin:0;}
        .auto-style24 {
            height: 58px;
            background-color:#00f7ff;
            text-align: left;
        }
        .auto-style29
        {
            width: 257px;
        }
        .auto-style30
        {
            height: 20px;
            width: 257px;
        }
        .auto-style31
        {
            width: 425px;
        }
        .auto-style32
        {
            height: 20px;
            width: 419px;
        }
        .auto-style33 {
            height: 1px;
        }
        .auto-style35 {
            height: 61px;
        }
        .auto-style36 {
            background-color: #FFFFFF;
        }
        .auto-style37 {
            height: 55px;
            background-color:#00f7ff;
        }
        .auto-style38 {
            width: 613px;
        }
        .auto-style43 {
            width: 565px;
            height: 23px;
        }
        .auto-style44 {
            width: 565px;
        }
        .auto-style46 {
            height: 24px;
        }
        .auto-style48 {
            width: 595px;
        }
        .auto-style49 {
            text-align: right;
        }
        .auto-style50 {
            height: 23px;
            text-align: right;
        }
        .auto-style52 {
            height: 20px;
            text-align: right;
        }
        .auto-style53 {
            height: 28px;
            width: 257px;
        }
        .auto-style54 {
            height: 28px;
        }
        .auto-style55 {
            width: 257px;
            height: 47px;
        }
        .auto-style56 {
            height: 47px;
        }
        .auto-style57 {
            height: 52px;
        }
        .auto-style58 {
            height: 44px;
            background-color: #FFFFFF;
            text-align: left;
            width: 74px;
        }
        .auto-style59 {
            width: 170px;
        }
        .auto-style60
        {
            text-align: right;
            height: 27px;
        }
        .auto-style61
        {
            height: 27px;
        }
    </style>
    <form id="form1" runat="server">
    <div style="color: #989EA3;width:100%;height:100%;margin:0; background-color:white;background-image:url('Images/white-background-vines.jpg');">
    
        <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="View_GuestUI" runat="server">
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style24" colspan="2">
                            &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label36" runat="server" Text="English Vocabulary Learning"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btn_Login" runat="server" OnClick="btn_Login_Click" Text="登录" />
                            &nbsp;<asp:Button ID="btn_Register" runat="server" OnClick="btn_Register_Click" Text="注册" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style22" colspan="2">&nbsp;
                            <br />
                            &nbsp;<asp:Label ID="Label37" runat="server" ForeColor="Black" Text="学习集名称搜索"></asp:Label>
                            &nbsp;<asp:TextBox ID="tbx_SearchForGuest" runat="server" Height="19px" style="margin-left: 0px" Width="230px"></asp:TextBox>
                            &nbsp;<asp:Button ID="btn_Search" runat="server" OnClick="btn_Search_Click" Text="搜索" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                        <td class="auto-style33">
                            </td>
                    </tr>
                    <tr>
                        <td class="auto-style4" colspan="2">
                            <asp:MultiView ID="MultiView_Guest_SearchResult" runat="server">
                                <asp:View ID="View_ResultForSC" runat="server">
                                    <asp:Label ID="lbl_ResultForSC" runat="server" ForeColor="Black"></asp:Label>
                                    <br />
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="748px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" style="text-align: center; margin-left: 307px" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" Height="216px">
                                        <AlternatingRowStyle BackColor="White" />
                                        <Columns>
                                            <asp:BoundField DataField="cname" HeaderText="学习集名称" />
                                            <asp:BoundField DataField="UserName" HeaderText="学生姓名" />
                                            <asp:CommandField HeaderText="详细信息" ShowSelectButton="True" />
                                        </Columns>
                                        <FooterStyle BackColor="#CCCC99" />
                                        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                                        <RowStyle BackColor="#F7F7DE" />
                                        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                                        <SortedAscendingCellStyle BackColor="#FBFBF2" />
                                        <SortedAscendingHeaderStyle BackColor="#848384" />
                                        <SortedDescendingCellStyle BackColor="#EAEAD3" />
                                        <SortedDescendingHeaderStyle BackColor="#575357" />
                                    </asp:GridView>
                                </asp:View>
                                <asp:View ID="View_ResultForUserName" runat="server">
                                    <br />
                                    <asp:Label ID="lbl_ResultForUserName" runat="server" ForeColor="Black"></asp:Label>
                                    <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" Width="632px" OnSelectedIndexChanged="GridView4_SelectedIndexChanged" style="margin-left: 378px; text-align: center;" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" Height="194px">
                                        <AlternatingRowStyle BackColor="White" />
                                        <Columns>
                                            <asp:BoundField DataField="UserName" HeaderText="学生姓名" />
                                            <asp:CommandField HeaderText="详细信息" ShowSelectButton="True" />
                                        </Columns>
                                        <FooterStyle BackColor="#CCCC99" />
                                        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                                        <RowStyle BackColor="#F7F7DE" />
                                        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                                        <SortedAscendingCellStyle BackColor="#FBFBF2" />
                                        <SortedAscendingHeaderStyle BackColor="#848384" />
                                        <SortedDescendingCellStyle BackColor="#EAEAD3" />
                                        <SortedDescendingHeaderStyle BackColor="#575357" />
                                    </asp:GridView>
                                </asp:View>
                                
                            </asp:MultiView>
                        </td>
                    </tr>
                </table>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </asp:View>
            
            
            <asp:View ID="View_UserUI" runat="server">
                <br />
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style37" colspan="2">
                            <asp:Label ID="lbl_Welcome" runat="server"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btn_UserInfo" runat="server" OnClick="btn_UserInfo_Click" Text="个人信息" />
                            &nbsp;&nbsp;
                            <asp:Button ID="btn_Settings" runat="server" OnClick="btn_Settings_Click" Text="密码修改" />
                            &nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btn_CreateCollections" runat="server" OnClick="btn_CreateCollections_Click" Text="创建学习集" />
                            &nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btn_MyCollections" runat="server" OnClick="btn_MyCollections_Click" Text="我的学习集" />
                            &nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btn_Favorite" runat="server" OnClick="btn_Favorite_Click" Text="我的收藏" />
                            &nbsp;&nbsp; &nbsp;
                            <asp:Button ID="btn_Logout" runat="server" OnClick="btn_Logout_Click" Text="退出登录" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style35" colspan="2">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label2" runat="server" Text="搜索：" ForeColor="Black"></asp:Label>
                            &nbsp;
                            <asp:TextBox ID="tbx_User_Search" runat="server" Height="22px" Width="233px"></asp:TextBox>
                            <asp:Button ID="btn_User_Search" runat="server" OnClick="btn_User_Search_Click" Text="搜索" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style36">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                        <td>
                            <asp:RadioButtonList ID="rbl_User_SearchType" runat="server" RepeatDirection="Horizontal" ForeColor="Black">
                                <asp:ListItem>学生学习集</asp:ListItem>
                                <asp:ListItem>学生用户</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                </table>
                <br />
                <asp:MultiView ID="MultiView_User" runat="server">
                    <asp:View ID="View_User_ResultForSC" runat="server">
                        <br />
                        <asp:Label ID="lbl_User_ResultForSC" runat="server" ForeColor="Black"></asp:Label>
                        <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView6_SelectedIndexChanged" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" Height="212px" style="text-align: center" Width="611px">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="cname" HeaderText="学习集名称" />
                                <asp:BoundField DataField="UserName" HeaderText="学生姓名" />
                                <asp:CommandField HeaderText="详细信息" ShowSelectButton="True" />
                            </Columns>
                            <FooterStyle BackColor="#CCCC99" />
                            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                            <RowStyle BackColor="#F7F7DE" />
                            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#FBFBF2" />
                            <SortedAscendingHeaderStyle BackColor="#848384" />
                            <SortedDescendingCellStyle BackColor="#EAEAD3" />
                            <SortedDescendingHeaderStyle BackColor="#575357" />
                        </asp:GridView>
                    </asp:View>
                    <br />
                    <br />
                    <asp:View ID="View_User_ResultForUserName" runat="server">
                        <br />
                        <asp:Label ID="lbl_User_ResultForUserName" runat="server" ForeColor="Black"></asp:Label>
                        <asp:GridView ID="GridView10" runat="server" AutoGenerateColumns="False" Width="546px" OnSelectedIndexChanged="GridView10_SelectedIndexChanged" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" Height="243px" style="text-align: center">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="userid" HeaderText="userid">
                                <FooterStyle CssClass="hidden" />
                                <HeaderStyle CssClass="hidden" />
                                <ItemStyle CssClass="hidden" />
                                </asp:BoundField>
                                <asp:BoundField DataField="UserName" HeaderText="学生姓名" />
                                <asp:CommandField HeaderText="详细信息" ShowSelectButton="True" SelectText="访问他/她的学习集" />
                            </Columns>
                            <FooterStyle BackColor="#CCCC99" />
                            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                            <RowStyle BackColor="#F7F7DE" />
                            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#FBFBF2" />
                            <SortedAscendingHeaderStyle BackColor="#848384" />
                            <SortedDescendingCellStyle BackColor="#EAEAD3" />
                            <SortedDescendingHeaderStyle BackColor="#575357" />
                        </asp:GridView>
                    </asp:View>
                    <br />
                    <asp:View ID="View_User_CollectionsEdit" runat="server">
                        <asp:GridView ID="GridView14" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView14_SelectedIndexChanged" Width="1313px" OnRowEditing="GridView14_RowEditing" CellPadding="4" OnRowCancelingEdit="GridView14_RowCancelingEdit" OnRowUpdating="GridView14_RowUpdating" OnRowDeleting="GridView14_RowDeleting" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" ForeColor="Black" GridLines="Vertical" Height="312px" style="text-align: center">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="userid">
                                
                               
                                <HeaderStyle CssClass="hidden" />
                                <ItemStyle CssClass="hidden" />
                                </asp:BoundField>
                                
                                <asp:BoundField DataField="cname">
                                <FooterStyle CssClass="hidden" />
                                <HeaderStyle CssClass="hidden" />
                                <ItemStyle CssClass="hidden" />
                                </asp:BoundField>
                                <asp:BoundField DataField="English" HeaderText="英文单词" />
                                <asp:BoundField DataField="chinese" HeaderText="中文含义" />
                                
                                <asp:BoundField DataField="wordid">
                                
                                <FooterStyle CssClass="hidden" />
                                <HeaderStyle CssClass="hidden" />
                                <ItemStyle CssClass="hidden" />
                                </asp:BoundField>
                                
                                <asp:CommandField ShowEditButton="True" HeaderText="操作1" />
                                <asp:CommandField ShowDeleteButton="True" HeaderText="操作2" />
                                <asp:CommandField HeaderText="操作3" SelectText="收藏" ShowSelectButton="True" />
                            </Columns>
                            <FooterStyle BackColor="#CCCC99" />
                            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                            <RowStyle BackColor="#F7F7DE" />
                            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#FBFBF2" />
                            <SortedAscendingHeaderStyle BackColor="#848384" />
                            <SortedDescendingCellStyle BackColor="#EAEAD3" />
                            <SortedDescendingHeaderStyle BackColor="#575357" />
                        </asp:GridView>
                        <br />
                        <asp:Button ID="btn_ModifyWords" runat="server" OnClick="btn_ModifyWords_Click" Text="新增单词" />
                        <br />
                    </asp:View>
                    <asp:View ID="View_User_Insert" runat="server">
                        <table class="auto-style1">
                            <tr>
                                <td class="auto-style38">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label39" runat="server" ForeColor="Black" Text="英文词汇"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="tbx_English" runat="server" Width="236px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style38">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label40" runat="server" ForeColor="Black" Text="中文含义"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="tbx_Chinese" runat="server" Width="235px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style12"></td>
                                <td class="auto-style13">
                                    &nbsp;&nbsp;&nbsp; 
                                    <asp:Button ID="btn_Save" runat="server" OnClick="btn_Save_Click" Text="新增记录" />
                                    &nbsp;<asp:Button ID="btn_Cancel" runat="server" OnClick="btn_Cancel_Click" Text="返回编辑页面" Width="100px" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style38">&nbsp;</td>
                                <td>
                                    &nbsp;&nbsp;&nbsp;&nbsp;
                                </td>
                            </tr>
                        </table>
                    </asp:View>
                    <br />
                    <asp:View ID="View_MyCollections" runat="server">
                        <asp:GridView ID="GridView12" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView12_SelectedIndexChanged" Width="600px" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" Height="205px" style="text-align: center" OnRowDeleting="GridView12_RowDeleting">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="Cname" HeaderText="学习集名称" />
                                <asp:CommandField HeaderText="详细信息" ShowSelectButton="True" />
                                <asp:CommandField HeaderText="操作" ShowDeleteButton="True" />
                            </Columns>
                            <FooterStyle BackColor="#CCCC99" />
                            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                            <RowStyle BackColor="#F7F7DE" />
                            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#FBFBF2" />
                            <SortedAscendingHeaderStyle BackColor="#848384" />
                            <SortedDescendingCellStyle BackColor="#EAEAD3" />
                            <SortedDescendingHeaderStyle BackColor="#575357" />
                        </asp:GridView>
                    </asp:View>
                    <br />
                    <asp:View ID="View_User_MyFavorite" runat="server">
                        <asp:GridView ID="GridView19" runat="server" AutoGenerateColumns="False" Height="257px" OnRowDeleting="GridView19_RowDeleting" Width="723px" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" style="text-align: center">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="UserID" HeaderText="userid">
                                <FooterStyle CssClass="hidden" />
                                <HeaderStyle CssClass="hidden" />
                                <ItemStyle CssClass="hidden" />
                                </asp:BoundField>
                                <asp:BoundField DataField="English" HeaderText="英文单词" />
                                <asp:BoundField DataField="Chinese" HeaderText="中文含义" />
                                <asp:CommandField HeaderText="操作" ShowDeleteButton="True" />
                            </Columns>
                            <FooterStyle BackColor="#CCCC99" />
                            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                            <RowStyle BackColor="#F7F7DE" />
                            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#FBFBF2" />
                            <SortedAscendingHeaderStyle BackColor="#848384" />
                            <SortedDescendingCellStyle BackColor="#EAEAD3" />
                            <SortedDescendingHeaderStyle BackColor="#575357" />
                        </asp:GridView>
                    </asp:View>
                    <br />
                    <asp:View ID="View_User_Detail_StudentCollection" runat="server">
                        <asp:GridView ID="GridView13" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView13_SelectedIndexChanged" Width="749px" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" Height="243px" style="text-align: center">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="English" HeaderText="英文单词" />
                                <asp:BoundField DataField="chinese" HeaderText="中文含义" />
                                <asp:CommandField HeaderText="操作" SelectText="收藏" ShowSelectButton="True" />
                            </Columns>
                            <FooterStyle BackColor="#CCCC99" />
                            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                            <RowStyle BackColor="#F7F7DE" />
                            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#FBFBF2" />
                            <SortedAscendingHeaderStyle BackColor="#848384" />
                            <SortedDescendingCellStyle BackColor="#EAEAD3" />
                            <SortedDescendingHeaderStyle BackColor="#575357" />
                        </asp:GridView>
                    </asp:View>
                    <br />
                    <asp:View ID="View_User_CreateCollection" runat="server">
                        <table class="auto-style16">
                            <tr>
                                <td class="auto-style43">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label38" runat="server" ForeColor="Black" Text="学习集名称"></asp:Label>
                                </td>
                                <td class="auto-style15">
                                    <asp:TextBox ID="tbx_CollectonName" runat="server" MaxLength="20" Width="200px"></asp:TextBox>
                                    &nbsp;<asp:Label ID="Label5" runat="server" ForeColor="Red" Text="*不能超过20个字符"></asp:Label>
&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style18"></td>
                                <td class="auto-style13">
                                    &nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="btn_InsertCollection" runat="server" OnClick="btn_InsertCollection_Click" Text="创建" style="margin-left: 0px" Width="74px" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style44">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style44">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </asp:View>
                    <br />
                    <asp:View ID="View_User_ModifyPwd" runat="server">
                        <table class="auto-style1">
                            <tr>
                                <td class="auto-style48">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;旧密码</td>
                                <td>
                                    <asp:TextBox ID="tbx_OldPwd" runat="server" Height="16px" TextMode="Password"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style48">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;新密码</td>
                                <td>
                                    <asp:TextBox ID="tbx_NewPwd" runat="server" Height="16px" style="margin-top: 3px" TextMode="Password"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style46">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 新密码确认</td>
                                <td class="auto-style46">
                                    <asp:TextBox ID="tbx_ConfirmNewPwd" runat="server" Height="16px" TextMode="Password"></asp:TextBox>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style48">&nbsp;</td>
                                <td>
                                    &nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="btn_ModifyPassWord" runat="server" OnClick="btn_ModifyPassWord_Click" Text="修改" Width="64px" />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                            </tr>
                        </table>
                    </asp:View>
                    <br />
                    <asp:View ID="View_User_PersonalInfo" runat="server">
                        <table class="auto-style1">
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style49">
                                    <asp:Label ID="Label6" runat="server" Text="用户ID"></asp:Label>
                                </td>
                                <td class="auto-style2">
                                    <asp:Label ID="lbl_UserID" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style49">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style49">
                                    <asp:Label ID="Label7" runat="server" Text="真实姓名"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="lbl_UserName" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style49">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style49">
                                    <asp:Label ID="Label8" runat="server" Text="生日"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="lbl_Birthday" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style49">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style49">
                                    <asp:Label ID="Label9" runat="server" Text="电子邮箱"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="lbl_Email" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style49">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style52">
                                    <asp:Label ID="Label10" runat="server" Text="年龄"></asp:Label>
                                </td>
                                <td class="auto-style13">
                                    <asp:Label ID="lbl_Age" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:Button ID="btn_GoToEditPersonalInfo" runat="server" OnClick="btn_GoToEditPersonalInfo_Click" Text="进入修改页面" />
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </asp:View>
                    <br />
                    <asp:View ID="View_User_EditPersonalInfo" runat="server">
                        <table class="auto-style16">
                            <tr>
                                <td class="auto-style58">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style58">真实姓名</td>
                                <td>
                                    <asp:TextBox ID="tbx_User_Username" runat="server" MaxLength="15" Width="85px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style58">生日</td>
                                <td>
                                    <asp:DropDownList ID="ddl_User_Year" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddl_User_Year_SelectedIndexChanged">
                                        <asp:ListItem>请选择</asp:ListItem>
                                        <asp:ListItem>1917</asp:ListItem>
                                        <asp:ListItem>1918</asp:ListItem>
                                        <asp:ListItem>1919</asp:ListItem>
                                        <asp:ListItem>1920</asp:ListItem>
                                        <asp:ListItem>1921</asp:ListItem>
                                        <asp:ListItem>1922</asp:ListItem>
                                        <asp:ListItem>1923</asp:ListItem>
                                        <asp:ListItem>1924</asp:ListItem>
                                        <asp:ListItem>1925</asp:ListItem>
                                        <asp:ListItem>1926</asp:ListItem>
                                        <asp:ListItem>1927</asp:ListItem>
                                        <asp:ListItem>1928</asp:ListItem>
                                        <asp:ListItem>1929</asp:ListItem>
                                        <asp:ListItem>1930</asp:ListItem>
                                        <asp:ListItem>1931</asp:ListItem>
                                        <asp:ListItem>1932</asp:ListItem>
                                        <asp:ListItem>1933</asp:ListItem>
                                        <asp:ListItem>1934</asp:ListItem>
                                        <asp:ListItem>1935</asp:ListItem>
                                        <asp:ListItem>1936</asp:ListItem>
                                        <asp:ListItem>1937</asp:ListItem>
                                        <asp:ListItem>1938</asp:ListItem>
                                        <asp:ListItem>1939</asp:ListItem>
                                        <asp:ListItem>1940</asp:ListItem>
                                        <asp:ListItem>1941</asp:ListItem>
                                        <asp:ListItem>1942</asp:ListItem>
                                        <asp:ListItem>1943</asp:ListItem>
                                        <asp:ListItem>1944</asp:ListItem>
                                        <asp:ListItem>1945</asp:ListItem>
                                        <asp:ListItem>1946</asp:ListItem>
                                        <asp:ListItem>1947</asp:ListItem>
                                        <asp:ListItem>1948</asp:ListItem>
                                        <asp:ListItem>1949</asp:ListItem>
                                        <asp:ListItem>1950</asp:ListItem>
                                        <asp:ListItem>1951</asp:ListItem>
                                        <asp:ListItem>1952</asp:ListItem>
                                        <asp:ListItem>1953</asp:ListItem>
                                        <asp:ListItem>1954</asp:ListItem>
                                        <asp:ListItem>1955</asp:ListItem>
                                        <asp:ListItem>1956</asp:ListItem>
                                        <asp:ListItem>1957</asp:ListItem>
                                        <asp:ListItem>1958</asp:ListItem>
                                        <asp:ListItem>1959</asp:ListItem>
                                        <asp:ListItem>1960</asp:ListItem>
                                        <asp:ListItem>1961</asp:ListItem>
                                        <asp:ListItem>1962</asp:ListItem>
                                        <asp:ListItem>1963</asp:ListItem>
                                        <asp:ListItem>1964</asp:ListItem>
                                        <asp:ListItem>1965</asp:ListItem>
                                        <asp:ListItem>1966</asp:ListItem>
                                        <asp:ListItem>1967</asp:ListItem>
                                        <asp:ListItem>1968</asp:ListItem>
                                        <asp:ListItem>1969</asp:ListItem>
                                        <asp:ListItem>1970</asp:ListItem>
                                        <asp:ListItem>1971</asp:ListItem>
                                        <asp:ListItem>1972</asp:ListItem>
                                        <asp:ListItem>1973</asp:ListItem>
                                        <asp:ListItem>1974</asp:ListItem>
                                        <asp:ListItem>1975</asp:ListItem>
                                        <asp:ListItem>1976</asp:ListItem>
                                        <asp:ListItem>1977</asp:ListItem>
                                        <asp:ListItem>1978</asp:ListItem>
                                        <asp:ListItem>1979</asp:ListItem>
                                        <asp:ListItem>1980</asp:ListItem>
                                        <asp:ListItem>1981</asp:ListItem>
                                        <asp:ListItem>1982</asp:ListItem>
                                        <asp:ListItem>1983</asp:ListItem>
                                        <asp:ListItem>1984</asp:ListItem>
                                        <asp:ListItem>1985</asp:ListItem>
                                        <asp:ListItem>1986</asp:ListItem>
                                        <asp:ListItem>1987</asp:ListItem>
                                        <asp:ListItem>1988</asp:ListItem>
                                        <asp:ListItem>1989</asp:ListItem>
                                        <asp:ListItem>1990</asp:ListItem>
                                        <asp:ListItem>1991</asp:ListItem>
                                        <asp:ListItem>1992</asp:ListItem>
                                        <asp:ListItem>1993</asp:ListItem>
                                        <asp:ListItem>1994</asp:ListItem>
                                        <asp:ListItem>1995</asp:ListItem>
                                        <asp:ListItem>1996</asp:ListItem>
                                        <asp:ListItem>1997</asp:ListItem>
                                        <asp:ListItem>1998</asp:ListItem>
                                        <asp:ListItem>1999</asp:ListItem>
                                        <asp:ListItem>2000</asp:ListItem>
                                        <asp:ListItem>2001</asp:ListItem>
                                        <asp:ListItem>2002</asp:ListItem>
                                        <asp:ListItem>2003</asp:ListItem>
                                        <asp:ListItem>2004</asp:ListItem>
                                        <asp:ListItem>2005</asp:ListItem>
                                        <asp:ListItem>2006</asp:ListItem>
                                        <asp:ListItem>2007</asp:ListItem>
                                        <asp:ListItem>2008</asp:ListItem>
                                        <asp:ListItem>2009</asp:ListItem>
                                        <asp:ListItem>2010</asp:ListItem>
                                        <asp:ListItem>2011</asp:ListItem>
                                        <asp:ListItem>2012</asp:ListItem>
                                        <asp:ListItem>2013</asp:ListItem>
                                        <asp:ListItem>2014</asp:ListItem>
                                        <asp:ListItem>2015</asp:ListItem>
                                        <asp:ListItem>2016</asp:ListItem>
                                        <asp:ListItem>2017</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:Label ID="Label20" runat="server" Text="年"></asp:Label>
                                    &nbsp;<asp:DropDownList ID="ddl_User_Month" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddl_User_Month_SelectedIndexChanged">
                                        <asp:ListItem>请选择</asp:ListItem>
                                        <asp:ListItem>01</asp:ListItem>
                                        <asp:ListItem>02</asp:ListItem>
                                        <asp:ListItem>03</asp:ListItem>
                                        <asp:ListItem>04</asp:ListItem>
                                        <asp:ListItem>05</asp:ListItem>
                                        <asp:ListItem>06</asp:ListItem>
                                        <asp:ListItem>07</asp:ListItem>
                                        <asp:ListItem>08</asp:ListItem>
                                        <asp:ListItem>09</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                        <asp:ListItem>11</asp:ListItem>
                                        <asp:ListItem>12</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:Label ID="Label21" runat="server" Text="月"></asp:Label>
                                    <asp:DropDownList ID="ddl_User_28Days" runat="server" Visible="False">
                                        <asp:ListItem>请选择</asp:ListItem>
                                        <asp:ListItem>01</asp:ListItem>
                                        <asp:ListItem>02</asp:ListItem>
                                        <asp:ListItem>03</asp:ListItem>
                                        <asp:ListItem>04</asp:ListItem>
                                        <asp:ListItem>05</asp:ListItem>
                                        <asp:ListItem>06</asp:ListItem>
                                        <asp:ListItem>07</asp:ListItem>
                                        <asp:ListItem>08</asp:ListItem>
                                        <asp:ListItem>09</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                        <asp:ListItem>11</asp:ListItem>
                                        <asp:ListItem Value="12"></asp:ListItem>
                                        <asp:ListItem>13</asp:ListItem>
                                        <asp:ListItem>14</asp:ListItem>
                                        <asp:ListItem>15</asp:ListItem>
                                        <asp:ListItem>16</asp:ListItem>
                                        <asp:ListItem>17</asp:ListItem>
                                        <asp:ListItem>18</asp:ListItem>
                                        <asp:ListItem>19</asp:ListItem>
                                        <asp:ListItem>20</asp:ListItem>
                                        <asp:ListItem>21</asp:ListItem>
                                        <asp:ListItem>22</asp:ListItem>
                                        <asp:ListItem>23</asp:ListItem>
                                        <asp:ListItem>24</asp:ListItem>
                                        <asp:ListItem>25</asp:ListItem>
                                        <asp:ListItem>26</asp:ListItem>
                                        <asp:ListItem>27</asp:ListItem>
                                        <asp:ListItem>28</asp:ListItem>
                                    </asp:DropDownList>
                                    &nbsp;<asp:DropDownList ID="ddl_User_29Days" runat="server" Visible="False">
                                        <asp:ListItem>请选择</asp:ListItem>
                                        <asp:ListItem>01</asp:ListItem>
                                        <asp:ListItem>02</asp:ListItem>
                                        <asp:ListItem>03</asp:ListItem>
                                        <asp:ListItem>04</asp:ListItem>
                                        <asp:ListItem>05</asp:ListItem>
                                        <asp:ListItem>06</asp:ListItem>
                                        <asp:ListItem>07</asp:ListItem>
                                        <asp:ListItem>08</asp:ListItem>
                                        <asp:ListItem>09</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                        <asp:ListItem>11</asp:ListItem>
                                        <asp:ListItem Value="12"></asp:ListItem>
                                        <asp:ListItem>13</asp:ListItem>
                                        <asp:ListItem>14</asp:ListItem>
                                        <asp:ListItem>15</asp:ListItem>
                                        <asp:ListItem>16</asp:ListItem>
                                        <asp:ListItem>17</asp:ListItem>
                                        <asp:ListItem>18</asp:ListItem>
                                        <asp:ListItem>19</asp:ListItem>
                                        <asp:ListItem>20</asp:ListItem>
                                        <asp:ListItem>21</asp:ListItem>
                                        <asp:ListItem>22</asp:ListItem>
                                        <asp:ListItem>23</asp:ListItem>
                                        <asp:ListItem>24</asp:ListItem>
                                        <asp:ListItem>25</asp:ListItem>
                                        <asp:ListItem>26</asp:ListItem>
                                        <asp:ListItem>27</asp:ListItem>
                                        <asp:ListItem>28</asp:ListItem>
                                        <asp:ListItem>29</asp:ListItem>
                                    </asp:DropDownList>
                                    &nbsp;<asp:DropDownList ID="ddl_User_30Days" runat="server" Visible="False">
                                        <asp:ListItem>请选择</asp:ListItem>
                                        <asp:ListItem>01</asp:ListItem>
                                        <asp:ListItem>02</asp:ListItem>
                                        <asp:ListItem>03</asp:ListItem>
                                        <asp:ListItem>04</asp:ListItem>
                                        <asp:ListItem>05</asp:ListItem>
                                        <asp:ListItem>06</asp:ListItem>
                                        <asp:ListItem>07</asp:ListItem>
                                        <asp:ListItem>08</asp:ListItem>
                                        <asp:ListItem>09</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                        <asp:ListItem>11</asp:ListItem>
                                        <asp:ListItem>12</asp:ListItem>
                                        <asp:ListItem>13</asp:ListItem>
                                        <asp:ListItem>14</asp:ListItem>
                                        <asp:ListItem>15</asp:ListItem>
                                        <asp:ListItem>16</asp:ListItem>
                                        <asp:ListItem>17</asp:ListItem>
                                        <asp:ListItem>18</asp:ListItem>
                                        <asp:ListItem>19</asp:ListItem>
                                        <asp:ListItem>20</asp:ListItem>
                                        <asp:ListItem>21</asp:ListItem>
                                        <asp:ListItem>22</asp:ListItem>
                                        <asp:ListItem>23</asp:ListItem>
                                        <asp:ListItem>24</asp:ListItem>
                                        <asp:ListItem>25</asp:ListItem>
                                        <asp:ListItem>26</asp:ListItem>
                                        <asp:ListItem>27</asp:ListItem>
                                        <asp:ListItem>28</asp:ListItem>
                                        <asp:ListItem>29</asp:ListItem>
                                        <asp:ListItem>30</asp:ListItem>
                                    </asp:DropDownList>
                                    &nbsp;<asp:DropDownList ID="ddl_User_31Days" runat="server" Visible="False">
                                        <asp:ListItem>请选择</asp:ListItem>
                                        <asp:ListItem>01</asp:ListItem>
                                        <asp:ListItem>02</asp:ListItem>
                                        <asp:ListItem>03</asp:ListItem>
                                        <asp:ListItem>04</asp:ListItem>
                                        <asp:ListItem>05</asp:ListItem>
                                        <asp:ListItem>06</asp:ListItem>
                                        <asp:ListItem>07</asp:ListItem>
                                        <asp:ListItem>08</asp:ListItem>
                                        <asp:ListItem>09</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                        <asp:ListItem>11</asp:ListItem>
                                        <asp:ListItem>12</asp:ListItem>
                                        <asp:ListItem>13</asp:ListItem>
                                        <asp:ListItem>14</asp:ListItem>
                                        <asp:ListItem>15</asp:ListItem>
                                        <asp:ListItem>16</asp:ListItem>
                                        <asp:ListItem>17</asp:ListItem>
                                        <asp:ListItem>18</asp:ListItem>
                                        <asp:ListItem>19</asp:ListItem>
                                        <asp:ListItem>20</asp:ListItem>
                                        <asp:ListItem>21</asp:ListItem>
                                        <asp:ListItem>22</asp:ListItem>
                                        <asp:ListItem>23</asp:ListItem>
                                        <asp:ListItem>24</asp:ListItem>
                                        <asp:ListItem>25</asp:ListItem>
                                        <asp:ListItem>26</asp:ListItem>
                                        <asp:ListItem>27</asp:ListItem>
                                        <asp:ListItem>28</asp:ListItem>
                                        <asp:ListItem>29</asp:ListItem>
                                        <asp:ListItem>30</asp:ListItem>
                                        <asp:ListItem>31</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:Label ID="Label22" runat="server" Text="日"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style58">电子邮箱</td>
                                <td>
                                    <asp:TextBox ID="tbx_User_EmailName" runat="server" Width="127px"></asp:TextBox>
                                    <asp:Label ID="lbl_user_email_AT" runat="server" Font-Size="X-Large" Text="@"></asp:Label>
                                    <asp:TextBox ID="tbx_User_EmailWebsite" runat="server" Width="90px"></asp:TextBox>
                                    <asp:Label ID="lbl_user_Email_com" runat="server" Text=".com"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style58">年龄</td>
                                <td>
                                    <asp:TextBox ID="tbx_User_Age" runat="server" AutoPostBack="True" Enabled="False" Width="49px"></asp:TextBox>
                                    <asp:Label ID="Label23" runat="server" Text="岁"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style58">&nbsp;</td>
                                <td>
                                    <asp:Button ID="btn_ModifyPersonalInfo" runat="server" OnClick="btn_ModifyPersonalInfo_Click" Text="修改" Width="86px" />
                                </td>
                            </tr>
                        </table>
                    </asp:View>
                </asp:MultiView>
                <br />
                &nbsp;<br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;
            </asp:View>
           
            <br />
            <asp:View ID="View_AdminUI" runat="server">
                <table class="auto-style16">
                    <tr>
                        <td class="auto-style57" style="background-color: #808080">
                            <asp:Label ID="lbl_Admin_Welcome" runat="server" BackColor="Gray" BorderColor="Black" ForeColor="White"></asp:Label>
                            &nbsp;&nbsp;<asp:Button ID="btn_StudentInfo" runat="server" OnClick="btn_StudentInfo_Click" Text="学生全部用户信息" />
                            &nbsp;&nbsp;<asp:Button ID="btn_CollectionsInfo" runat="server" OnClick="btn_CollectionsInfo_Click" Text="学生全部学习集信息" Width="134px" />
                            &nbsp;
                            <asp:Button ID="btn_AllFavorite" runat="server" OnClick="btn_AllFavorite_Click" Text="学生全部收藏信息" Width="126px" />
                            &nbsp;
                            <asp:Button ID="btn_PwdAnswer" runat="server" OnClick="btn_PwdAnswer_Click" Text="学生全部密码保护答案信息" Width="195px" />
                            &nbsp;
                            <asp:Button ID="btn_SuperAdmin_AdminInfo" runat="server" Enabled="False" OnClick="btn_SuperAdmin_AdminInfo_Click" Text="全部管理员信息(仅限超管)" />
                            &nbsp;
                            <asp:Button ID="btn_Admin_ModifyPwd" runat="server" OnClick="btn_Admin_ModifyPwd_Click" Text="密码修改" />
                            &nbsp;
                            <asp:Button ID="btn_Admin_LogOut" runat="server" OnClick="btn_Admin_LogOut_Click" Text="退出登录" />
                        </td>
                    </tr>
                </table>
                <br />
                <asp:MultiView ID="MultiView_Admin" runat="server">
                    <asp:View ID="View_Admin_StudentInfo" runat="server">
                        <br />
                        <table class="auto-style1">
                            <tr>
                                <td class="auto-style49">
                                    <asp:Label ID="Label41" runat="server" ForeColor="Black" Text="常用搜索"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="tbx_Admin_SearchInfo" runat="server" Height="21px" Width="170px"></asp:TextBox>
                                    &nbsp;
                                    <asp:Button ID="btn_Admin_StudentInfo_Common_Search" runat="server" OnClick="btn_Admin_StudentInfo_Common_Search_Click" style="height: 21px" Text="搜索" />
                                    <asp:RadioButtonList ID="rbl_Admin_SearchType" runat="server" RepeatDirection="Horizontal" ForeColor="Black">
                                        <asp:ListItem>按学生精确ID</asp:ListItem>
                                        <asp:ListItem>按学生姓名</asp:ListItem>
                                        <asp:ListItem>按学生出生年份</asp:ListItem>
                                    </asp:RadioButtonList>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style50">
                                    <asp:Label ID="Label42" runat="server" ForeColor="Black" Text="按性别搜索"></asp:Label>
                                </td>
                                <td class="auto-style15">
                                    <asp:DropDownList ID="ddl_admin_GenderType" runat="server">
                                        <asp:ListItem>请选择</asp:ListItem>
                                        <asp:ListItem>男</asp:ListItem>
                                        <asp:ListItem>女</asp:ListItem>
                                    </asp:DropDownList>
                                    &nbsp;&nbsp;
                                    <asp:Button ID="btn_Admin_StudentInfo_Search_Gender" runat="server" OnClick="btn_Admin_StudentInfo_Search_Gender_Click" Text="搜索" Width="48px" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style60">
                                    <asp:Label ID="Label43" runat="server" ForeColor="Black" Text="按年龄区间搜索"></asp:Label>
                                </td>
                                <td class="auto-style61">
                                    <asp:TextBox ID="tbx_admin_MinAge" runat="server"></asp:TextBox>
                                    &nbsp;至&nbsp;
                                    <asp:TextBox ID="tbx_admin_MaxAge" runat="server"></asp:TextBox>
                                    &nbsp;&nbsp;
                                    <asp:Button ID="btn_Admin_StudentInfo_Search_RangeOfAge" runat="server" OnClick="btn_Admin_StudentInfo_Search_RangeOfAge_Click" Text="搜索" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style49">
                                    <asp:Label ID="Label44" runat="server" ForeColor="Black" Text="按年龄精确搜索"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="tbx_Admin_Age" runat="server"></asp:TextBox>
                                    &nbsp;
                                    <asp:Button ID="btn_Admin_StudentInfo_Search_Age" runat="server" Text="搜索" OnClick="btn_Admin_StudentInfo_Search_Age_Click" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style49">
                                    <asp:Label ID="Label45" runat="server" ForeColor="Black" Text="还原"></asp:Label>
                                </td>
                                <td>
                                    <asp:Button ID="btn_Admin_Recovery_StudentInfo" runat="server" OnClick="btn_Admin_Recovery_StudentInfo_Click" Text="恢复到全部学生信息" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style14">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style14" colspan="2">
                                    <asp:GridView ID="GridView15" runat="server" AutoGenerateColumns="False" Height="243px" Width="951px" OnRowDeleting="GridView15_RowDeleting" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" style="text-align: center">
                                        <AlternatingRowStyle BackColor="White" />
                                        <Columns>
                                            <asp:BoundField DataField="UserID" HeaderText="学生ID" />
                                            <asp:BoundField DataField="UserName" HeaderText="学生姓名" />
                                            <asp:BoundField DataField="UserPassWord" HeaderText="学生密码" />
                                            <asp:BoundField DataField="Birthday" HeaderText="学生生日" />
                                            <asp:BoundField DataField="Email" HeaderText="电子邮箱" />
                                            <asp:BoundField DataField="Gender" HeaderText="性别" />
                                            <asp:BoundField DataField="Age" HeaderText="年龄" />
                                            <asp:CommandField ShowDeleteButton="True" HeaderText="操作2" />
                                        </Columns>
                                        <FooterStyle BackColor="#CCCC99" />
                                        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                                        <RowStyle BackColor="#F7F7DE" />
                                        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                                        <SortedAscendingCellStyle BackColor="#FBFBF2" />
                                        <SortedAscendingHeaderStyle BackColor="#848384" />
                                        <SortedDescendingCellStyle BackColor="#EAEAD3" />
                                        <SortedDescendingHeaderStyle BackColor="#575357" />
                                    </asp:GridView>
                                </td>
                            </tr>
                        </table>
                        <br />
                    </asp:View>
                    <br />
                    <asp:View ID="View_Admin_CollectionsInfo" runat="server">
                        <br />
                        <asp:Label ID="Label51" runat="server" ForeColor="Black" Text="按照学生ID精确搜索："></asp:Label>
                        <asp:TextBox ID="tbx_Admin_UserID_CollectionsInfo" runat="server"></asp:TextBox>
                        &nbsp;<asp:Button ID="btn_Search_CollectionsInfo" runat="server" OnClick="btn_Search_CollectionsInfo_Click" Text="搜索" />
                        <br />
                        <asp:GridView ID="GridView16" runat="server" AutoGenerateColumns="False" Height="219px" OnRowDeleting="GridView16_RowDeleting" OnSelectedIndexChanged="GridView16_SelectedIndexChanged" Width="695px" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" style="text-align: center">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="userid" HeaderText="UserID" />
                                <asp:BoundField DataField="UserName" HeaderText="学生姓名" />
                                <asp:BoundField DataField="Cname" HeaderText="学习集名称" />
                                <asp:CommandField HeaderText="操作1" SelectText="详细信息" ShowSelectButton="True" />
                                <asp:CommandField HeaderText="操作2" ShowDeleteButton="True" />
                            </Columns>
                            <FooterStyle BackColor="#CCCC99" />
                            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                            <RowStyle BackColor="#F7F7DE" />
                            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#FBFBF2" />
                            <SortedAscendingHeaderStyle BackColor="#848384" />
                            <SortedDescendingCellStyle BackColor="#EAEAD3" />
                            <SortedDescendingHeaderStyle BackColor="#575357" />
                        </asp:GridView>
                    </asp:View>
                    <asp:View ID="View_Admin_CollectionsDetail" runat="server">
                        <asp:GridView ID="GridView17" runat="server" AutoGenerateColumns="False" Height="210px" OnRowDeleting="GridView17_RowDeleting" Width="690px" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" style="text-align: center">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="userid">
                                <FooterStyle CssClass="hidden" />
                                <HeaderStyle CssClass="hidden" />
                                <ItemStyle CssClass="hidden" />
                                </asp:BoundField>
                                <asp:BoundField DataField="cname">
                                <FooterStyle CssClass="hidden" />
                                <HeaderStyle CssClass="hidden" />
                                <ItemStyle CssClass="hidden" />
                                </asp:BoundField>
                                <asp:BoundField DataField="english" HeaderText="英文单词" />
                                <asp:BoundField DataField="chinese" HeaderText="中文含义">
                                </asp:BoundField>
                                <asp:BoundField DataField="wordid">
                                <FooterStyle CssClass="hidden" />
                                <HeaderStyle CssClass="hidden" />
                                <ItemStyle CssClass="hidden" />
                                </asp:BoundField>
                                <asp:CommandField HeaderText="操作" ShowDeleteButton="True" />
                            </Columns>
                            <FooterStyle BackColor="#CCCC99" />
                            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                            <RowStyle BackColor="#F7F7DE" />
                            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#FBFBF2" />
                            <SortedAscendingHeaderStyle BackColor="#848384" />
                            <SortedDescendingCellStyle BackColor="#EAEAD3" />
                            <SortedDescendingHeaderStyle BackColor="#575357" />
                        </asp:GridView>
                    </asp:View>
                    <br />
                    <asp:View ID="View_Admin_UserFavorite" runat="server">
                        <br />
                        <asp:Label ID="Label50" runat="server" ForeColor="Black" Text="按照学生ID精确搜索："></asp:Label>
                        <asp:TextBox ID="tbx_Admin_UserFavorite" runat="server"></asp:TextBox>
                        &nbsp;<asp:Button ID="btn_Search_Admin_UserFavorite" runat="server" OnClick="btn_Search_Admin_UserFavorite_Click" Text="搜索" />
                        &nbsp;<asp:GridView ID="GridView20" runat="server" AutoGenerateColumns="False" Height="220px" OnRowDeleting="GridView20_RowDeleting" Width="682px" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="UserID" HeaderText="学生ID" />
                                <asp:BoundField DataField="English" HeaderText="英文单词" />
                                <asp:BoundField DataField="Chinese" HeaderText="中文含义" />
                                <asp:CommandField HeaderText="操作" ShowDeleteButton="True" />
                            </Columns>
                            <FooterStyle BackColor="#CCCC99" />
                            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                            <RowStyle BackColor="#F7F7DE" />
                            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#FBFBF2" />
                            <SortedAscendingHeaderStyle BackColor="#848384" />
                            <SortedDescendingCellStyle BackColor="#EAEAD3" />
                            <SortedDescendingHeaderStyle BackColor="#575357" />
                        </asp:GridView>
                    </asp:View>
                    <br />
                    <asp:View ID="View_Admin_PwdAnswer" runat="server">
                        按照学生ID精确搜索：<asp:TextBox ID="tbx_Admin_UserID" runat="server"></asp:TextBox>
                        &nbsp;
                        <asp:Button ID="btn_SearchPwdAnswer" runat="server" OnClick="btn_SearchPwdAnswer_Click" Text="搜索" />
                        <br />
                        通过学生ID删除所有密码保护问题:<asp:TextBox ID="tbx_DeletePA_UserID" runat="server"></asp:TextBox>
                        &nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="删除" />
                        <br />
&nbsp;
                        <asp:Button ID="btn_AllPwdAnswer" runat="server" OnClick="btn_AllPwdAnswer_Click" Text="恢复所有密保问题信息" style="margin-left: 94px" Width="138px" />
                        <br />
                        <br />
                        <br />
                        <asp:GridView ID="GridView21" runat="server" AutoGenerateColumns="False" Height="265px" Width="778px" OnSelectedIndexChanged="GridView21_SelectedIndexChanged" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" style="text-align: center">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="AnswerID" HeaderText="答案ID" />
                                <asp:BoundField DataField="QuestionName" HeaderText="密码问题" />
                                <asp:BoundField DataField="Answer" HeaderText="密码问题答案" />
                                <asp:BoundField DataField="UserID" HeaderText="学生ID" />
                                <asp:CommandField HeaderText="操作" SelectText="修改" ShowSelectButton="True" />
                            </Columns>
                            <FooterStyle BackColor="#CCCC99" />
                            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                            <RowStyle BackColor="#F7F7DE" />
                            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#FBFBF2" />
                            <SortedAscendingHeaderStyle BackColor="#848384" />
                            <SortedDescendingCellStyle BackColor="#EAEAD3" />
                            <SortedDescendingHeaderStyle BackColor="#575357" />
                        </asp:GridView>
                    </asp:View>
                    <br />
                    <asp:View ID="View_Admin_ModifyPwdAnswer" runat="server">
                        <table class="auto-style16">
                            <tr>
                                <td class="auto-style30">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label46" runat="server" ForeColor="Black" Text="答案ID号"></asp:Label>
                                </td>
                                <td class="auto-style13">
                                    <asp:Label ID="lbl_AnswerID" runat="server" ForeColor="Black"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style30">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label47" runat="server" ForeColor="Black" Text="学生ID"></asp:Label>
                                </td>
                                <td class="auto-style13">
                                    <asp:Label ID="lbl_User_UserID" runat="server" ForeColor="Black"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style29">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label48" runat="server" ForeColor="Black" Text="密码问题"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="lbl_Question" runat="server" ForeColor="Black"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style53">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label49" runat="server" ForeColor="Black" Text="密码答案 "></asp:Label>
                                </td>
                                <td class="auto-style54">
                                    <asp:TextBox ID="tbx_User_Answer" runat="server"></asp:TextBox>
                                    <asp:Label ID="Label30" runat="server" ForeColor="Red" Text="*20字符以内"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style55"></td>
                                <td class="auto-style56">
                                    <asp:Button ID="btn_ModifyAnswer" runat="server" OnClick="btn_ModifyAnswer_Click" Text="修改" Width="68px" />
                                    &nbsp;
                                    <asp:Button ID="btn_BackToPwdAnswer" runat="server" OnClick="btn_BackToPwdAnswer_Click" Text="返回密保问题页面" Width="116px" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style29">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style29">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </asp:View>
                    <br />
                    <asp:View ID="View_SuperAdmin_AdminInfo" runat="server">
                        <br />
                        搜索内容：<asp:TextBox ID="tbx_SuperAdmin_AdminInfo" runat="server"></asp:TextBox>
                        &nbsp;
                        <asp:Button ID="btn_Search_SuperAdmin_AdminInfo" runat="server" OnClick="btn_Search_SuperAdmin_AdminInfo_Click" Text="搜索" />
                        <br />
                        <asp:RadioButtonList ID="rbl_type_AdminSearch" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem>精确管理员ID</asp:ListItem>
                            <asp:ListItem>姓名模糊查询</asp:ListItem>
                        </asp:RadioButtonList>
                        <asp:GridView ID="GridView18" runat="server" AutoGenerateColumns="False" Height="268px" Width="659px" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" style="text-align: center" OnRowDeleting="GridView18_RowDeleting" OnSelectedIndexChanged="GridView18_SelectedIndexChanged">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="adminid" HeaderText="管理员ID" />
                                <asp:BoundField DataField="adminname" HeaderText="管理员姓名" />
                                <asp:BoundField DataField="adminpassword" HeaderText="管理员密码" />
                                <asp:CommandField HeaderText="操作1" SelectText="修改" ShowSelectButton="True" />
                                <asp:CommandField HeaderText="操作2" ShowDeleteButton="True" />
                            </Columns>
                            <FooterStyle BackColor="#CCCC99" />
                            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                            <RowStyle BackColor="#F7F7DE" />
                            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#FBFBF2" />
                            <SortedAscendingHeaderStyle BackColor="#848384" />
                            <SortedDescendingCellStyle BackColor="#EAEAD3" />
                            <SortedDescendingHeaderStyle BackColor="#575357" />
                        </asp:GridView>
                        <br />
                        <asp:Button ID="tbx_InsertNewAdmin" runat="server" Text="添加新管理员" OnClick="tbx_InsertNewAdmin_Click" Width="147px" />
                        <br />
                    </asp:View>
                    <br />
                    <asp:View ID="View_SuperAdmin_ModifyAdminInfo" runat="server">
                        <table class="auto-style16">
                            <tr>
                                <td class="auto-style59">管理员ID</td>
                                <td>
                                    <asp:Label ID="lbl_AdminID" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style59">管理员姓名<br /> 
                                    <asp:Label ID="Label34" runat="server" ForeColor="Red" Text="*不超过20个字符"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="tbx_Admin_AdminName" runat="server" MaxLength="20"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style59">密码<br /> 
                                    <asp:Label ID="Label35" runat="server" ForeColor="Red" Text="*6-15个字符之间"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="tbx_AdminPwd" runat="server" TextMode="Password"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style59">确认密码</td>
                                <td>
                                    <asp:TextBox ID="tbx_AdminConfirmPwd" runat="server" TextMode="Password"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style59">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style59">&nbsp;</td>
                                <td>
                                    <asp:Button ID="btn_ModifyPwdInfo" runat="server" OnClick="btn_ModifyPwdInfo_Click" Text="修改" Width="62px" />
                                </td>
                            </tr>
                        </table>
                    </asp:View>
                    <br />
                    <asp:View ID="View_SuperAdmin_RegisterAdmin" runat="server">
                        <table class="auto-style16">
                            <tr>
                                <td class="auto-style19">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label53" runat="server" ForeColor="Black" Text="管理员姓名"></asp:Label>
                                    <br /> 
                                    </td>
                                <td>
                                    <asp:TextBox ID="tbx_RegisterAdmin_AdminName" runat="server"></asp:TextBox>
                                    <asp:Label ID="Label31" runat="server" ForeColor="Red" Text="*不超过20个字符"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style19">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label54" runat="server" ForeColor="Black" Text="密码"></asp:Label>
                                    &nbsp;<br /> 
                                    </td>
                                <td>
                                    <asp:TextBox ID="tbx_RegisterAdmin_AdminPassword" runat="server" TextMode="Password"></asp:TextBox>
                                    <asp:Label ID="Label26" runat="server" ForeColor="Red" Text="*密码长度在6-15之间"></asp:Label>
                                    </td>
                            </tr>
                            <tr>
                                <td class="auto-style20">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label55" runat="server" ForeColor="Black" Text="密码确认"></asp:Label>
                                </td>
                                <td class="auto-style21">
                                    <asp:TextBox ID="tbx_RegisterAdmin_ConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style19">&nbsp;</td>
                                <td>
                                    &nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="btn_RegisterNewAdmin" runat="server" OnClick="btn_RegisterNewAdmin_Click" Text="注册" Width="70px" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style19">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style19">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </asp:View>
                    <br />
                    <asp:View ID="View_Admin_ModifyPwd" runat="server">
                        <table class="auto-style16">
                            <tr>
                                <td class="auto-style31">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;旧密码</td>
                                <td>
                                    <asp:TextBox ID="tbx_Admin_OldPwd" runat="server" TextMode="Password"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style31">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;新密码</td>
                                <td>
                                    <asp:TextBox ID="tbx_Admin_NewPwd" runat="server" TextMode="Password"></asp:TextBox>
                                    <asp:Label ID="Label33" runat="server" ForeColor="Red" Text="*密码在6-15字符之间"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style31">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;新密码确认</td>
                                <td>
                                    <asp:TextBox ID="tbx_Admin_ConfirmPwd" runat="server" TextMode="Password"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style31">&nbsp;</td>
                                <td>
                                    &nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="btn_Admin_ChangePwd" runat="server" OnClick="btn_Admin_ChangePwd_Click" Text="修改" Width="81px" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style31">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </asp:View>
                    <br />
                    <asp:View ID="View_SuperAdmin_ModifyPwd" runat="server">
                        <table class="auto-style16">
                            <tr>
                                <td class="auto-style32">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;旧密码</td>
                                <td>
                                    <asp:TextBox ID="tbx_SuperAdmin_OldPwd" runat="server" TextMode="Password"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style32">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;新密码</td>
                                <td>
                                    <asp:TextBox ID="tbx_SuperAdmin_NewPwd" runat="server" TextMode="Password"></asp:TextBox>
                                    <asp:Label ID="Label32" runat="server" ForeColor="Red" Text="*密码在6-15字符之间"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style32">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 新密码确认</td>
                                <td>
                                    <asp:TextBox ID="tbx_SuperAdmin_ConfirmPwd" runat="server" TextMode="Password"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style32">&nbsp;</td>
                                <td>
                                    &nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="btn_SuperAdmin_ChangePwd" runat="server" OnClick="btn_SuperAdmin_ChangePwd_Click" Text="修改" Width="75px" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style32">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </asp:View>
                    <br />
                </asp:MultiView>
            </asp:View>
           
        </asp:MultiView>
    
    </div>
    </form>
</body>
</html>

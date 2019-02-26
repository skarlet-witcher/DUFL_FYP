<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RegisterForStudent.aspx.cs" Inherits="English_Learning_Website.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1
        {
            width: 100%;
        }
        .auto-style2
        {
            height: 21px;
            width: 663px;
        }
        .auto-style3
        {
            width: 644px;
        }
        .auto-style4
        {
            height: 21px;
            width: 644px;
        }
        .auto-style5
        {
            width: 644px;
            height: 25px;
        }
        .auto-style6
        {
            height: 25px;
            width: 663px;
        }
        .auto-style7
        {
            width: 644px;
            height: 20px;
        }
        .auto-style8
        {
            height: 20px;
            width: 663px;
        }
        .auto-style9 {
            height: 47px;
            background-color: #999999;
        }
        .auto-style10 {
            height: 10px;
            width: 663px;
        }
        .auto-style11 {
            height: 10px;
            width: 644px;
        }
        .auto-style12 {
            height: 6px;
            width: 644px;
        }
        .auto-style13 {
            height: 6px;
            width: 663px;
        }
        .auto-style14 {
            width: 663px;
        }
    </style>
</head>
<body style="background-color: #C0C0C0">
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style9" colspan="2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>欢迎注册!</strong>&nbsp;&nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label26" runat="server" ForeColor="Red" Text="*为必填项目"></asp:Label>
                    &nbsp;<br />
                </td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label17" runat="server" Text="*真实姓名"></asp:Label>
                </td>
                <td class="auto-style14">
                    <asp:TextBox ID="tbx_UserName" runat="server" MaxLength="20"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbx_UserName" ErrorMessage="真实姓名不能为空" ForeColor="Red">不能为空</asp:RequiredFieldValidator>
                &nbsp;
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="tbx_UserName" ErrorMessage="姓名格式不合法" ForeColor="Red" ValidationExpression="[a-zA-Z]{1,20}|[\u4e00-\u9fa5]{1,10}">姓名格式不合法</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label2" runat="server" Text="*密码"></asp:Label>
                </td>
                <td class="auto-style14">
                    <asp:TextBox ID="tbx_PassWord" runat="server" TextMode="Password" MaxLength="15"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tbx_PassWord" ErrorMessage="密码不能为空" ForeColor="Red">不能为空</asp:RequiredFieldValidator>
&nbsp;
                    <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="tbx_PassWord" ErrorMessage="CustomValidator" ForeColor="Red" OnServerValidate="CustomValidator1_ServerValidate">密码长度应在6-15之间</asp:CustomValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label3" runat="server" Text="*密码确认"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="tbx_ConfirmPassWord" runat="server" TextMode="Password" MaxLength="15"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="tbx_ConfirmPassWord" ErrorMessage="确认密码不能为空" ForeColor="Red">不能为空</asp:RequiredFieldValidator>
&nbsp; <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="tbx_PassWord" ControlToValidate="tbx_ConfirmPassWord" ErrorMessage="两次输入的密码应当一样" ForeColor="Red">两次输入的密码应当一致</asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label4" runat="server" Text="*性别"></asp:Label>
                </td>
                <td class="auto-style14">&nbsp;<asp:DropDownList ID="ddl_Gender" runat="server">
                        <asp:ListItem>请选择</asp:ListItem>
                        <asp:ListItem>男</asp:ListItem>
                        <asp:ListItem>女</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:CustomValidator ID="CustomValidator2" runat="server" ControlToValidate="ddl_Gender" ErrorMessage="必须选择性别" ForeColor="Red" OnServerValidate="CustomValidator2_ServerValidate">必须选择性别</asp:CustomValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; *出生年月日 </td>
                <td class="auto-style13">
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <asp:ScriptManager ID="ScriptManager1" runat="server">
                            </asp:ScriptManager>
                            <asp:DropDownList ID="ddl_Year" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddl_Year_SelectedIndexChanged">
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
                            &nbsp;<asp:DropDownList ID="ddl_Month" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddl_Month_SelectedIndexChanged">
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
                            &nbsp;&nbsp;<asp:DropDownList ID="ddl_28Days" runat="server" Visible="False">
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
                            &nbsp;<asp:DropDownList ID="ddl_29Days" runat="server" Visible="False">
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
                            &nbsp;<asp:DropDownList ID="ddl_30Days" runat="server" Visible="False">
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
                            &nbsp;<asp:DropDownList ID="ddl_31Days" runat="server" Visible="False">
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
                        </ContentTemplate>
                    </asp:UpdatePanel>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            </tr>
            <tr>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style10">
                    <asp:CustomValidator ID="CustomValidator3" runat="server" ControlToValidate="ddl_Year" ErrorMessage="请选择年份" ForeColor="Red" OnServerValidate="CustomValidator3_ServerValidate">请选择年份</asp:CustomValidator>
&nbsp;<asp:CustomValidator ID="CustomValidator4" runat="server" ControlToValidate="ddl_Month" ErrorMessage="请选择月份" ForeColor="Red" OnServerValidate="CustomValidator4_ServerValidate">请选择月份</asp:CustomValidator>
&nbsp;&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;密码问题1</td>
                <td class="auto-style8">
                    <asp:Label ID="lbl_Q1" runat="server" Text="你母亲的名字是"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*密码问题1 答案</td>
                <td class="auto-style14">
                    <asp:TextBox ID="tbx_A1" runat="server" MaxLength="20"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="tbx_A1" ErrorMessage="密码问题1 不能为空" ForeColor="Red">不能为空</asp:RequiredFieldValidator>
                &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="tbx_A1" ErrorMessage="姓名格式不合法" ForeColor="Red" ValidationExpression="[a-zA-Z]{1,20}|[\u4e00-\u9fa5]{1,10}">姓名格式不合法</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;密码问题2</td>
                <td class="auto-style14">
                    <asp:Label ID="lbl_Q2" runat="server" Text="小学班主任的名字是"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*密码问题2 答案</td>
                <td class="auto-style14">
                    <asp:TextBox ID="tbx_A2" runat="server" MaxLength="20"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="tbx_A2" ErrorMessage="密码问题2 不能为空" ForeColor="Red">不能为空</asp:RequiredFieldValidator>
                &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="tbx_A2" ErrorMessage="姓名格式不合法" ForeColor="Red" ValidationExpression="[a-zA-Z]{1,20}|[\u4e00-\u9fa5]{1,10}">姓名格式不合法</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;密码问题3</td>
                <td class="auto-style14">
                    <asp:Label ID="lbl_Q3" runat="server" Text="你父亲的名字是"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 密码问题3 答案</td>
                <td class="auto-style14">
                    <asp:TextBox ID="tbx_A3" runat="server" MaxLength="20"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="tbx_A3" ErrorMessage="密码问题3 不能为空" ForeColor="Red">不能为空</asp:RequiredFieldValidator>
                &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="tbx_A3" ErrorMessage="姓名格式不合法" ForeColor="Red" ValidationExpression="[a-zA-Z]{1,20}|[\u4e00-\u9fa5]{1,10}">姓名格式不合法</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; *电子邮箱</td>
                <td class="auto-style14">
                    <asp:TextBox ID="tbx_Email" runat="server" MaxLength="50"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="tbx_Email" ErrorMessage="邮箱不能为空" ForeColor="Red">不能为空</asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tbx_Email" ErrorMessage="请输入正确的邮箱格式" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">请输入正确的邮箱格式</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style14">
                    <asp:Button ID="btn_Submit" runat="server" OnClick="btn_Submit_Click" Text="提交" Width="78px" />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <br />
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
                    <br />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>

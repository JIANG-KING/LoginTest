<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginTest.aspx.cs" Inherits="LoginTest.LoginTest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 578px;
        }
        .auto-style4 {
            width: 100%;
            height: 534px;
        }
        .auto-style5 {
            height: 48px;
        }
        .auto-style6 {
            height: 104px;
        }
        .auto-style7 {
            width: 578px;
            height: 53px;
        }
        .auto-style8 {
            height: 53px;
        }
    </style>
</head>
<body style="height: 587px; width: 1169px">
    <form id="form1" runat="server">
        <table class="auto-style4" style="margin: auto; padding: inherit; border-style: groove; border-width: 1px;">
            <caption class="auto-style5">
                <asp:Label ID="Label8" runat="server" Font-Size="XX-Large" Text="注册页面"></asp:Label>
            </caption>
            <tr>
                <td class="auto-style7" style="border-style: groove; border-width: 1px">
        <asp:Label ID="UsernameLabel" runat="server" Text="用 户 名:"></asp:Label>
                </td>
                <td class="auto-style8" style="border-style: groove; border-width: 1px">
        <asp:TextBox ID="UsernameInput" runat="server" Height="30px" Width="345px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1" style="border-style: groove; border-width: 1px">
                    <asp:Label ID="NameLabel" runat="server" Text="真实姓名"></asp:Label>
                </td>
                <td style="border-style: groove; border-width: 1px"><asp:TextBox ID="NameInput" runat="server" Height="30px" Width="345px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1" style="border-style: groove; border-width: 1px">
                    <asp:Label ID="LabelPassword" runat="server" Text="密码"></asp:Label>
                </td>
                <td style="border-style: groove; border-width: 1px"><asp:TextBox ID="PasswordInput" runat="server" Height="30px" TextMode="Password" Width="345px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1" style="border-style: groove; border-width: 1px">
                    <asp:Label ID="LabelConfirmPassword" runat="server" Text="确认密码"></asp:Label>
                </td>
                <td style="border-style: groove; border-width: 1px"><asp:TextBox ID="ConfirmInput" runat="server" AutoPostBack="True" Height="30px" TextMode="Password" Width="345px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1" style="border-style: groove; border-width: 1px">
                    <asp:Label ID="LabelSex" runat="server" Text="性别"></asp:Label>
                </td>
                <td style="border-style: groove; border-width: 1px"><asp:RadioButton ID="RadioButtonMan" runat="server" GroupName="Sex" Text="男" Checked="True" Height="30px" />
        <asp:RadioButton ID="RadioButtonMale" runat="server" GroupName="Sex" Text="女" Height="30px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style1" style="border-style: groove; border-width: 1px">
                    <asp:Label ID="LabelAddress" runat="server" Text="地址"></asp:Label>
                </td>
                <td style="border-style: groove; border-width: 1px"><asp:DropDownList ID="DropDownListProvence" runat="server" AutoPostBack="True" Height="30px" OnSelectedIndexChanged="DropDownListProvence_SelectedIndexChanged" Width="100px">
            <asp:ListItem>江西省</asp:ListItem>
            <asp:ListItem>浙江省</asp:ListItem>
            <asp:ListItem>四川省</asp:ListItem>
            <asp:ListItem>河南省</asp:ListItem>
            <asp:ListItem Selected="True">请选择</asp:ListItem>
        </asp:DropDownList>
                    <asp:DropDownList ID="DropDownListCity" runat="server" AutoPostBack="True" Height="30px" Width="100px">
            <asp:ListItem>请选择</asp:ListItem>
        </asp:DropDownList>
        <asp:TextBox ID="TextBoxAddress" runat="server" Height="30px" Width="272px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1" style="border-style: groove; border-width: 1px">
                    <asp:Label ID="LabelEmail" runat="server" Text="Email"></asp:Label>
                </td>
                <td style="border-style: groove; border-width: 1px"><asp:TextBox ID="TextBoxEmail" runat="server" Height="30px" Width="345px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1" style="border-style: groove; border-width: 1px">
                    <asp:Label ID="LabelTel" runat="server" Text="联系电话"></asp:Label>
                </td>
                <td style="border-style: groove; border-width: 1px"><asp:TextBox ID="TextBoxTel" runat="server" Height="30px" Width="345px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td aria-atomic="True" aria-autocomplete="both" colspan="2" dir="auto"  style="text-align:center" class="auto-style6">
        <asp:Button ID="ButtonRegister" runat="server" OnClick="ButtonRegister_Click" Text="注册" Height="45px" Width="120px" />
                </td>
            </tr>
        </table>
        <asp:Label ID="CopyRightLabel" runat="server" Text="Copyright © 1999-2021 Yunking. All rights reserved."></asp:Label>
    </form>
</body>
</html>

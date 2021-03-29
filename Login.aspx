<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="LoginTest.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 49%;
            height: 140px;
        }
        .auto-style2 {
            width: 139px;
        }
        .auto-style3 {
            width: 139px;
            height: 24px;
        }
        .auto-style4 {
            height: 24px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3" style="border-style: groove; border-width: 1px">用户名:</td>
                    <td class="auto-style4" style="border-style: groove; border-width: 1px">
                        <asp:Label ID="LabelUsername" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="border-style: groove; border-width: 1px">真实姓名:</td>
                    <td style="border-style: groove; border-width: 1px">
                        <asp:Label ID="LabelName" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" style="border-style: groove; border-width: 1px">性别:</td>
                    <td class="auto-style4" style="border-style: groove; border-width: 1px">
                        <asp:Label ID="LabelSex" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="border-style: groove; border-width: 1px">地址:</td>
                    <td style="border-style: groove; border-width: 1px">
                        <asp:Label ID="LabelAddress" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="border-style: groove; border-width: 1px">邮箱:</td>
                    <td style="border-style: groove; border-width: 1px">
                        <asp:Label ID="LabelEmail" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="border-style: groove; border-width: 1px">联系电话:</td>
                    <td style="border-style: groove; border-width: 1px">
                        <asp:Label ID="LabelTel" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
        <p>
            <asp:Label ID="CopyRightLabel" runat="server" Text="Copyright © 1999-2021 Yunking. All rights reserved."></asp:Label>
        </p>
    </form>
</body>
</html>

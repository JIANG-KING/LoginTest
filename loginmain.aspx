<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="loginmain.aspx.cs" Inherits="LoginTest.loginmain" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <p>
            账号：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </p>
        <p>
            密码：<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </p>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="登录" />
    </form>
</body>
</html>

<%@ Page Language="VB" AutoEventWireup="false" CodeFile="login.aspx.vb" Inherits="login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="login.css" type="text/css" rel="stylesheet"/>
    <title>管理员登录</title>
</head>
<body onload="Javascript:form1.password.focus()">
    <form id="form1" method="post" runat="server">
        <table id="Table3" style="margin-bottom:5px;width:300px;height:100px" cellspacing="0" cellpadding="1" width="200" border="0">
            <tr>
                <td>
                    <!--<p align="center">-->
                        <asp:Label ID="Label1" runat="server" ForeColor="Red">
                        </asp:Label>
                        <br /><p id="a">请输入管理员密码:</p><br />
                        <asp:TextBox ID="password" runat="server" TextMode="Password" align="center"></asp:TextBox>
                        <asp:TextBox ID="TextBox1" runat="server" Width="4px" Height="20px"></asp:TextBox>
                        <asp:Button  id="Button1" runat="server" Text="登录" />
                    <!--</p>-->
                </td>
            </tr>
        </table>
    <div>
    
    </div>
    </form>
</body>
</html>

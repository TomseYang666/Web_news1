<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Shownews.aspx.cs" Inherits="news.Shownews" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<!-- <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>-->
    <title>显示新闻</title>
</head>
<body bgcolor="#FFFFFF" text="#000000">
    <table width="98%" border="1" cellspacing="0" cellpadding="0" bordercolordark="#FFFFFF" bordercolorlight="006B9F" align="center">
        <tr>
            <td>
                <table width="100%" border="0">
                    <tr>
                        <td>
                            <div align="right">
                                <img src="printer.gif" alt="printer face" width="32" height="28"/>

                                <a href="Javascript:window.print()">打印本页</a>
                            </div>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td height="35">
                <table width="100%" border="0">
                    <tr>
                        <td>
                            <div align="center">
                                <font size="3">
                                    <b>
                                        <% =FormatString(dr["biaoti"].ToString()).ToString() %>
                                    </b>
                                </font>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div align="center">
                                <%if (dr["img"].ToString() != "")
                                    { %>
                                <img src='file/<% =dr["img"]%>' /><%} %>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <%=FormatString(dr["neirong"].ToString()).ToString() %>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div align="right">
                                <%=dr["shijian"] %>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div align="right">
                                <%=FormatString(dr["zuozhe"].ToString()).ToString() %>
                            </div>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <table width="100%" border="0">
                    <tr>
                        <td width="24%">
                            <font color="#0000FF">浏览</font>
                            <font color="red"><%=dr["click"] %></font>
                            <font color="#0000FF">次</font>
                        </td>
                        <td width="50%">
                            <div align="center">
                                <img src="email.gif" alt="email face" width="34" height="26"/>
                                <img src="g.gif" alt="g face" width="34" height="26"/>
                            </div>
                        </td>
                        <td width="26%">
                            <div align="right">
                                <a href="Default.aspx">关闭窗口</a>
                            </div>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>
</html>

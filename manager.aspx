<%@ Page Language="VB" AutoEventWireup="false" CodeFile="manager.aspx.vb" Inherits="manager" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <link href="manager.css" type="text/css" rel="stylesheet"/>
    <title>管理</title>
</head>
   
<body>
    <form id="form1" runat="server">
    <div>
     <br/><p id="a">管理新闻网站</p><br/>
    <a href="addnews.aspx" target="_parent" id="b">添加新闻</a>
    <a href="update.aspx" target="_parent" id="b1">删除新闻</a>
    </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="news._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>������վ��ҳ�Զ�����</title>
    <meta http-equiv="Content-Type" content="text/html;charset=gb2312"/>
    <style type="text/css">
        #form1{height:492px;}




    </style>
</head>
<body bgcolor="#99CCFF" text="#000000" style="height:503px">
    <form id="form1" runat="server">
         <table width="610" border="0" align="center" style="height:403px">
            <!-- ���ĵ�һ���Ǳ��� -->
            <tr>
                <td width="608"><h3 align="center">������վ��ҳ�Զ�����</h3></td>
            </tr>
            <!-- ���ĵڶ������ڲ����ŵķ������ -->
            <tr>
                <td width="608">
                    <font color="#FF0000">[�ڲ�����]......................................</font>
                </td>
            </tr>
              <tr>
                 <td width="608">
                      <div align="center">
                          <asp:DataGrid ID="MyList"
                            runat="server"
                            width="600"
                            ShowFppter="false"
                            CellPadding="2"
                            CellSpacing="1"
                            Font-name="����"
                            Font-Size="8pt"
                            EnableViewState="false"
                            AutoGenerateCoiumns="false"
                            >
                              <Columns>
                                 <asp:TemplateColumn HeaderText="����" HeaderStyle-HorizontalAlign="Center">
                                       <ItemTemplate>
                                             <asp:HyperLink  
                                            Text='<%#FormatString(DataBinder.Eval(Container.DataItem,"biaoti").ToString()) %>'
                                            NavigateUrl='<%#"Shownews.aspx? id="+DataBinder.Eval(Container.DataItem,"id").ToString() %>'
                                            runat="server"
                                            /> 
                                       </ItemTemplate>
                                   </asp:TemplateColumn>
                                  <asp:TemplateColumn HeaderText="ʱ��" HeaderStyle-HorizontalAlign="Center">
                                        <ItemTemplate>
                                            <%# DataBinder.Eval(Container.DataItem,"shijian")%>
                                        </ItemTemplate> 
                                  </asp:TemplateColumn>
                                  <asp:TemplateColumn HeaderText="����" HeaderStyle-HorizontalAlign="Center">
                                        <ItemTemplate>
                                           <%# DataBinder.Eval(Container.DataItem,"zuozhe")%>
                                        </ItemTemplate> 
                                        </asp:TemplateColumn>
                                  <asp:TemplateColumn HeaderText="���ʴ���" HeaderStyle-HorizontalAlign="Center">
                                        <ItemTemplate>
                                           <%# DataBinder.Eval(Container.DataItem,"click")%>
                                        </ItemTemplate> 
                                 </asp:TemplateColumn>
                              </Columns>
                          </asp:DataGrid>
                      </div>
                 </td>
            </tr>
              <tr>
                <td width="608" height="13">
                    <div align="right">
                         &gt;&gt;&gt;[<a href="login.aspx" target="_blank">���Ź���</a>][<a href="http://rsgis.whu.edu.cn/">��������</a>]
                     </div>
                    </td>

             </tr>
             <tr>
                 <td width="608" height="10">&nbsp;</td>
             </tr>
              <tr>
                <td width="608" height="10">
                    <font color="#FF0000">[�ⲿ����]......................................</font>
                </td>
            </tr>
              <tr>
                  <td width="608" height="13">
                      <div align="center">
                           <asp:DataGrid ID="MyList1"
                            runat="server"
                            width="600px"
                            ShowFppter="false"
                            CellPadding="2"
                            CellSpacing="1"
                            Font-name="����"
                            Font-Size="8pt"
                            EnableViewState="false"
                            AutoGenerateCoiumns="false"
                            >
                               <Columns>
                                  <asp:TemplateColumn HeaderText="����" HeaderStyle-HorizontalAlign="Center">
                                         <ItemTemplate>
                                           <asp:HyperLink ID="HyperLink1" 
                                            Text='<%#FormatString(DataBinder.Eval(Container.DataItem,"biaoti").ToString()) %>'
                                            NavigateUrl='<%#"Shownews.aspx? id="+DataBinder.Eval(Container.DataItem,"id").ToString() %>'
                                            runat="server"
                                            /> 
                                         </ItemTemplate>
                                    </asp:TemplateColumn>
                                     <asp:TemplateColumn HeaderText="ʱ��" HeaderStyle-HorizontalAlign="Center">
                                        <ItemTemplate>
                                            <%# DataBinder.Eval(Container.DataItem,"shijian")%>
                                        </ItemTemplate> 
                                    </asp:TemplateColumn>
                                <asp:TemplateColumn HeaderText="����" HeaderStyle-HorizontalAlign="Center">
                                        <ItemTemplate>
                                            <%# DataBinder.Eval(Container.DataItem,"zuozhe")%>
                                        </ItemTemplate> 
                                </asp:TemplateColumn>
                        <asp:TemplateColumn HeaderText="���ʴ���" HeaderStyle-HorizontalAlign="Center">
                                        <ItemTemplate>
                                           <%# DataBinder.Eval(Container.DataItem,"click")%>
                                        </ItemTemplate>    
                         </asp:TemplateColumn> 
                               </Columns>
                           </asp:DataGrid>
                      </div>
                  </td>
              </tr>
              <tr>
                <td width="608" height="13">
                    <div align="right">
                         &gt;&gt;&gt;[<a href="login.aspx" target="_blank">���Ź���</a>][<a href="https://news.baidu.com/">��������</a>]
                     </div>
                    </td>

             </tr>
         </table>
    <div>
    <div align="center">
        All rights resvered.<br/>
        made by Fang Tingxvan<font color="#FF0000">&copy;</font>
    </div>
    </div>
    </form>
</body>
</html>

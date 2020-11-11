using System;
using System.Data;
using System.Data.OleDb;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace news
{
    public partial class addnews : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //建立数据库连接
                OleDbConnection MyConnection = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath("news.accdb"));
                //字段，它们的类型是内部新闻，以时间字段排序
                OleDbDataAdapter MyCommand = new OleDbDataAdapter("select id,typename FROM Types", MyConnection);
                //字段，它们的类型是外部新闻，以时间字段排序
               // OleDbDataAdapter myCommand1 = new OleDbDataAdapter("select top 12 contents.*FROM contents WHERE typeid=2 order by shijian desc", myConnection);
                DataSet ds = new DataSet();
                //this.AutoGenerateCoiumns = false;
                //this.AutoPostBackControl = false;
                //myCommand.Fill(ds, "contents");
                MyCommand.Fill(ds, "types");
                //DropDownList2.AutoGenerateColumns = false;
                DropDownList2.DataSource = ds.Tables["types"].DefaultView;
                DropDownList2.DataTextField = "typename";
                DropDownList2.DataValueField = "id";
                DropDownList2.DataBind();
               
            }
            }
        public void Button1_Click(Object sender,EventArgs e)
        {
            string filepath = Server.MapPath("file/" + Path.GetFileName(File1.PostedFile.FileName));
            if((biaoti.Text=="")||(neirong.Text=="")||(zuozhe.Text==""))
            {
                Label1.Text = "标题、内容、作者等不能为空";
            }
            else if(biaoti.Text.Length>=50)
            {
                Label1.Text = "你的标题太长了！";
            }
            else if(File1.PostedFile.ContentLength>=153600)
            {
                Span1.Text = "上传的文件不能超过70kb！";
                return;
            }
            else if(File.Exists(filepath))
            {
                Span1.Text = "上传文件重名，请重新上传！";
                return;
            }
            else
            {
                if(File1.PostedFile!=null)
                {
                    try
                    {
                        File1.PostedFile.SaveAs(filepath);

                    }
                    catch(Exception exc)
                    {
                        Span1.Text = "保存文件时出错<b>" + filepath + "</b><br>" + exc.ToString();
                    }

                    //建立数据库连接
                    OleDbConnection MyConnection = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath("news.accdb"));
                    OleDbCommand MyCommand = new OleDbCommand("insert into contents(biaoti,neirong,zuozhe,shijian,click,img,typeid) values('"+biaoti.Text.ToString()+"','"+neirong.Text.ToString()+"','"+zuozhe.Text.ToString()+"','"+DateTime.Now.ToString()+"',0,'"+Path.GetFileName(File1.PostedFile.FileName)+"','"+DropDownList2.SelectedItem.Value+"')", MyConnection);
                    MyCommand.Connection.Open();
                    MyCommand.ExecuteNonQuery();
                    MyCommand.Connection.Close();
                    Response.Redirect("Default.aspx");
                }
            }
        }
        public void reset_Click(Object sender,EventArgs e)
        {
            biaoti.Text = "";
            neirong.Text = "";
            zuozhe.Text = "";
        }
        }
}
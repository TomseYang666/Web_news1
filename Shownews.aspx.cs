using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Data.OleDb;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

namespace news
{

    public partial class Shownews : System.Web.UI.Page
    {
        //定义变量
        public DataRow dr;
        public String newsid;
        protected void Page_Load(object sender, EventArgs e)
        {
            //获取新闻ID编号
            if (Request.Params[0] == null) newsid = "1";
            else newsid =Request.Params[0];
           //建立数据库连接
            OleDbConnection myConnection = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath("news.accdb"));
            string str = "select top 12 contents.* FROM contents WHERE id=" + newsid;
            //字段，它们的类型是内部新闻，以时间字段排序
            OleDbDataAdapter myCommand = new OleDbDataAdapter(str, myConnection);
            DataSet ds = new DataSet();
            myCommand.Fill(ds, "contents");
            dr=ds.Tables["contents"].Rows[0];
            OleDbCommand myCommand2 = new OleDbCommand(str, myConnection);
            myCommand2.Connection.Open();
            OleDbDataReader reader = myCommand2.ExecuteReader();
            reader.Read();
            int i = reader.GetInt32(0);
            i++;
            reader.Close();
            myCommand2.CommandText = "update contents SET click=" + i.ToString() + " WHERE id=" + newsid;
            myCommand2.ExecuteNonQuery();
            myCommand2.Connection.Close();
        }
        public string FormatString(string str)
        {
            str = str.Replace(" ", "&nbsp;&nbsp;");
            str = str.Replace("<", "&lt");
            str = str.Replace(">", "&gt");
            str = str.Replace("\n".ToString(), "<br>");
            return str;
        }
    }
}
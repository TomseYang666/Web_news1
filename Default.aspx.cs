using System;
using System.Data;
using System.Data.OleDb;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace news
{

    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                //建立数据库连接
                OleDbConnection myConnection = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath("news.accdb"));
                //字段，它们的类型是内部新闻，以时间字段排序
                OleDbDataAdapter myCommand = new OleDbDataAdapter("select top 12 contents.*FROM contents WHERE typeid=1 order by shijian desc", myConnection);
                //字段，它们的类型是外部新闻，以时间字段排序
                OleDbDataAdapter myCommand1 = new OleDbDataAdapter("select top 12 contents.*FROM contents WHERE typeid=2 order by shijian desc", myConnection);
                DataSet ds = new DataSet();
                //this.AutoGenerateCoiumns = false;
                //this.AutoPostBackControl = false;
               myCommand.Fill(ds, "contents");
               myCommand1.Fill(ds, "types");
                // DataView dv=
                MyList.AutoGenerateColumns = false;
                MyList1.AutoGenerateColumns = false;
                MyList.DataSource = ds.Tables["contents"].DefaultView;
                MyList1.DataSource = ds.Tables["types"].DefaultView;
                MyList.DataBind();
                MyList1.DataBind();
                //Request.Form["id"];
            }
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

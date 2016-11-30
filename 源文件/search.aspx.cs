using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class search : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string strSQL = "select * from product where title like '%" + Server.UrlDecode(Request.QueryString["strName"]) + "%'";
        DataTable dt = dbManager.ExecuteQuery(strSQL);
        Repeater1.DataSource = dt;
        Repeater1.DataBind();
    }
}

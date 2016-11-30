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
using System.IO;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Convert.ToInt32(Session["pass"]) != 1)
            Response.Redirect("Default.aspx");
        string strSQL1 = "select pic from product where bh=" + Request.QueryString["bh"];
        DataTable dt = dbManager.ExecuteQuery(strSQL1);
        string strurl = dt.Rows[0]["pic"].ToString();
        File.Delete(Server.MapPath("./image/" + strurl));
        string strSQL = "delete from product where bh=" + Request.QueryString["bh"];
        if (dbManager.ExecuteNonquery(strSQL) > 0)
        {
            Response.Write("<script>alert('删除成功')</script>");
            Response.Write("<script>location.assign('manager.aspx')</script>");
        }
    }
}

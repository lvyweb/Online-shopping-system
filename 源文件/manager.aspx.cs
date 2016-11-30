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

public partial class manager : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Convert.ToInt32(Session["pass"]) != 1)
            Response.Redirect("default.aspx");
        int iPageSize = 8;
        string strSQL = "select * from product order by bh desc";
        DataTable dt = dbManager.ExecuteQuery(strSQL);
        PagedDataSource pg = new PagedDataSource();
        pg.DataSource = dt.DefaultView;
        pg.AllowPaging = true;
        pg.PageSize = iPageSize;
        int iTotalPage = pg.PageCount;
        int iCurPage = Convert.ToInt32(Request.QueryString["page"]);
        if (iCurPage < 1)
            iCurPage = 1;
        if (iCurPage > iTotalPage)
            iCurPage = iTotalPage;
        pg.CurrentPageIndex = iCurPage - 1;
        Label1.Text = "第" + iCurPage.ToString() + "页/共" + iTotalPage.ToString() + "页";
        LinkButton1.PostBackUrl = Request.CurrentExecutionFilePath + "?page=1";
        LinkButton2.PostBackUrl = Request.CurrentExecutionFilePath + "?page=" + (iCurPage - 1);
        LinkButton3.PostBackUrl = Request.CurrentExecutionFilePath + "?page=" + (iCurPage + 1);
        LinkButton4.PostBackUrl = Request.CurrentExecutionFilePath + "?page=" + pg.PageCount;
        DataList1.DataSource = pg;
        DataList1.DataBind();

    }
   
    protected void Button3_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("default.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("insert.aspx");
    }
  
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect(Request.CurrentExecutionFilePath + "?page=" + TextBox1.Text);
    }
}

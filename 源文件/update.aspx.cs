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
            Response.Redirect("Default.axpx");
        if (!IsPostBack)
        {
            string strSQL = "select * from product where bh=" + Request.QueryString["bh"];
            DataTable dt = dbManager.ExecuteQuery(strSQL);
            TextBox1.Text = Server.HtmlDecode(dt.Rows[0]["title"].ToString()).Replace("<br>", "\r\n");
            TextBox2.Text = Server.HtmlDecode(dt.Rows[0]["contents"].ToString()).Replace("<br>", "\r\n");
            Image1.ImageUrl = "image/" + Server.HtmlDecode(dt.Rows[0]["pic"].ToString()).Replace("<br>", "\r\n");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string strSQL = " ";
        string strname = Server.HtmlEncode(TextBox1.Text);
        strname = strname.Replace("\r\n", "<br>");
        strname = strname.Replace("'", "' '");

        strname = strname.Replace(" ", "&nbsp;");

        string strname1 = Server.HtmlEncode(TextBox2.Text);
        strname1 = strname1.Replace("\r\n", "<br>");

        strname1 = strname1.Replace("'", "' '");
        strname1 = strname1.Replace(" ", "&nbsp;");


        if (FileUpload1.HasFile)
        {
            string strFileName = DateTime.Now.Year.ToString() + DateTime.Now.Month.ToString() + DateTime.Now.Day.ToString() + DateTime.Now.Hour.ToString() + DateTime.Now.Minute.ToString() + DateTime.Now.Second.ToString();
            FileUpload1.SaveAs(Server.MapPath("image/" + strFileName + ".jpg"));

            File.Delete(Server.MapPath(Image1.ImageUrl));
            strSQL = "update product set title='" + strname + "',contents='" + strname1 + "',pic='" + strFileName + ".jpg' where bh=" + Request.QueryString["bh"];
        }
        else
            strSQL = "update product set title='" + strname + "',contents='" + strname1 + "' where bh=" + Request.QueryString["bh"];
        if (dbManager.ExecuteNonquery(strSQL) > 0)
        {
            Response.Write("<script>alert('修改成功')</script>");
            Response.Write("<script>location.assign('manager.aspx')</script>");
        }
        else
            Response.Write("<script>alert('修改失败')</script>");

    }
}

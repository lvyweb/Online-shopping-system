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

public partial class insert : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Convert.ToInt32(Session["pass"]) != 1)
            Response.Redirect("default.aspx");
    }
  
   
    protected void Button1_Click(object sender, EventArgs e)
    {
        string strname = Server.HtmlEncode(TextBox1.Text);
        strname = strname.Replace("\r\n", "<br>");
        strname = strname.Replace("'", "' '");
        strname = strname.Replace(" ", "&nbsp;");
        string strname1 = Server.HtmlEncode(TextBox2.Text);
        strname1 = strname1.Replace("\r\n", "<br>");
        strname1 = strname1.Replace(" ' ", "' '");
        strname1 = strname1.Replace(" ", "&nbsp;"); 
        if (FileUpload1.HasFile)
        {
            string strFileName = DateTime.Now.Year.ToString() + DateTime.Now.Month.ToString() + DateTime.Now.Day.ToString() + DateTime.Now.Hour.ToString() + DateTime.Now.Minute.ToString() + DateTime.Now.Second.ToString();
            FileUpload1.SaveAs(Server.MapPath("image/" + strFileName + ".jpg"));
            string strSQL = "insert into product(pic,title,contents) values('" + strFileName + ".jpg','" + strname + "','" + strname1 + "')";
            if (dbManager.ExecuteNonquery(strSQL) > 0)
            {
                Response.Write("<script>alert('图片插入成功')</script>");
                Response.Write("<script>location.assign('manager.aspx')</script>");
            }
            else
                Response.Write("<script>alert('图片插入失败')</script>");
        }

    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
}

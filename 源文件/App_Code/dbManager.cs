using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

/// <summary>
/// dbManager 的摘要说明
/// </summary>
public class dbManager
{
    public dbManager()
    {
        //
        // TODO: 在此处添加构造函数逻辑
        //
    }
    public static DataTable ExecuteQuery(string strSQL)
    {
        string ConnectionString = ConfigurationManager.ConnectionStrings["sqlConn"].ConnectionString;
        SqlConnection conn = new SqlConnection(ConnectionString);
        try
        {
            SqlDataAdapter adapter = new SqlDataAdapter(strSQL, conn);
            DataSet ds = new DataSet();
            adapter.Fill(ds);
            return ds.Tables[0];
        }
        finally
        {
            if (conn.State == ConnectionState.Open)
                conn.Close();
        }
    }
    public static int ExecuteNonquery(string strSQL)
    {
        string ConnectionString = ConfigurationManager.ConnectionStrings["sqlConn"].ConnectionString;
        SqlConnection conn = new SqlConnection(ConnectionString);
        conn.Open();
        try
        {
            SqlCommand cmd = new SqlCommand(strSQL, conn);
            return (cmd.ExecuteNonQuery());
        }
        finally
        {
            if (conn.State == ConnectionState.Open)
                conn.Close();
        }
    }
    public static object ExecuteScalar(string strSQL)
    {
        string ConnectionString = ConfigurationManager.ConnectionStrings["sqlConn"].ConnectionString;
        SqlConnection conn = new SqlConnection(ConnectionString);
        conn.Open();
        try
        {
            SqlCommand cmd = new SqlCommand();
            cmd = conn.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = strSQL;
            return cmd.ExecuteScalar();
        }
        finally
        {
            if (conn.State == ConnectionState.Open)
                conn.Close();
        }
    }
}

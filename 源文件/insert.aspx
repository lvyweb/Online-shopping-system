<%@ Page Language="C#" AutoEventWireup="true" CodeFile="insert.aspx.cs" Inherits="insert" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align:center" align="center"><strong><span style="font-size:14pt">添加帽子信息<br />
        <br />
        </span> &nbsp;</strong>产品图片：<asp:FileUpload ID="FileUpload1" runat="server" />&nbsp;<br /><br />产品名称：&nbsp;&nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
    产品介绍：<asp:TextBox ID="TextBox2" runat="server" Height="211px" Width="294px" 
            ontextchanged="TextBox2_TextChanged"></asp:TextBox><br />
     <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="添加新产品" /></div>
   
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="update.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <asp:Image ID="Image1" runat="server" Height="172px" Width="229px" />
        <br />
        <asp:FileUpload ID="FileUpload1" runat="server" />
    
        <br />
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="修改完成" />
    
    </div>
    </form>
</body>
</html>

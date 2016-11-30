<%@ Page Language="C#" AutoEventWireup="true" CodeFile="manager.aspx.cs" Inherits="manager" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server"><div style="text-align:center" align="center"><br />
        <table align="center" class="style1">
            <tr>
                <td align="center">
                    <b></b><strong>第一帽子店后台管理页面&nbsp;</strong></td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center">
    <asp:DataList ID="DataList1" runat="server" RepeatColumns="4" 
        RepeatDirection="Horizontal" >
            <ItemTemplate><table><tr><td style="width:100px"><a href="show.aspx?bh=<%#Eval("bh") %>" target="_blank"><img alt="图片"  src="image/<%#Eval("pic") %>" width="120" height="120" /></a></td>
        <td style="width:55px">   <asp:Label ID="Label2" runat="server" Text='<%#Eval("bh") %>'></asp:Label> <br /><br />
           <asp:Label ID="Label3" runat="server" Text='<%#Eval("title") %>' Width="36px" ></asp:Label><br /><br />
        
          </td></tr></table>
          <a href="del.aspx?bh=<%#Eval("bh") %>">删除</a>    <a href="update.aspx?bh=<%#Eval("bh") %>">修改</a>
          
          
          </ItemTemplate>
    </asp:DataList>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
     <asp:Button ID="Button2" runat="server" PostBackUrl="~/insert.aspx" Text="插入新纪录" />
       <asp:Label ID="Label1" runat="server" EnableViewState="False" Text="Label"></asp:Label>
    <asp:LinkButton ID="LinkButton1" runat="server" EnableViewState="False">首页</asp:LinkButton>
    <asp:LinkButton ID="LinkButton2" runat="server" EnableViewState="False">上一页</asp:LinkButton>
    <asp:LinkButton ID="LinkButton3" runat="server" EnableViewState="False">下一页</asp:LinkButton>
    <asp:LinkButton ID="LinkButton4" runat="server" EnableViewState="False">最后一页</asp:LinkButton>
     <asp:TextBox ID="TextBox1"  runat="server" EnableViewState="False" Width="39px"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" EnableViewState="False" OnClick="Button1_Click" Text="转到" />&nbsp;&nbsp;&nbsp;&nbsp;
     <asp:Button ID="Button3" runat="server" EnableViewState="False" OnClick="Button3_Click" Text="安全退出" />&nbsp;
     </div>
    </form>
</body>
</html>

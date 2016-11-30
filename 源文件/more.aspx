<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="more.aspx.cs" Inherits="more" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" RepeatColumns="3" 
        RepeatDirection="Horizontal" EnableViewState="False" EnableTheming="False">
        <ItemTemplate>
        <table>
        <tr><td style="width:100px; height:126px;">
        <a href="show.aspx?id=<%#Eval("bh") %>" target="_blank"><img alt="图片"  src="image/<%#Eval("pic") %>" width="180" height="150" id="IMG1" /></a>
        </td>
        <td style="width:102px; height:126px;">
        <asp:Label ID="Label2" runat="server" Text='<%#Eval("bh") %>'></asp:Label><br /><br />
            <asp:Label ID="Label3" runat="server" Text='<%#Eval("title") %>'></asp:Label>
                </td>
             </tr>
         </table>
             </ItemTemplate>
    </asp:DataList>
        <asp:Label ID="Label1" runat="server" EnableViewState="False" Text="Label" ></asp:Label>&nbsp;&nbsp;&nbsp;
    <asp:LinkButton ID="LinkButton1" runat="server" EnableViewState="False">首页</asp:LinkButton>&nbsp;&nbsp;&nbsp;
    <asp:LinkButton ID="LinkButton2" runat="server" EnableViewState="False">上一页</asp:LinkButton>&nbsp;&nbsp;&nbsp;
    <asp:LinkButton ID="LinkButton3" runat="server" EnableViewState="False">下一页</asp:LinkButton>&nbsp;&nbsp;&nbsp;
    <asp:LinkButton ID="LinkButton4" runat="server" EnableViewState="False">最后一页</asp:LinkButton>&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox1" runat="server" EnableViewState="False" Width="39px"></asp:TextBox>&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server"  EnableViewState="False" OnClick="Button1_Click" Text="转到" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp; 
</asp:Content>


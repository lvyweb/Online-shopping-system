<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default2" Title="无标题页" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:sqlConn %>" 
        SelectCommand="SELECT top 12 [bh], [pic], [title] FROM [product] ORDER BY [bh] DESC">
    </asp:SqlDataSource>
    <asp:DataList ID="DataList1" runat="server" DataKeyField="bh" 
        DataSourceID="SqlDataSource1" RepeatColumns="4" 
        RepeatDirection="Horizontal">
        <ItemTemplate>
         <a href="show.aspx?bh=<%#Eval("bh") %>" target="_blank"><img alt="图片" src="image/<%#Eval("pic") %>" height="160" width="160"  /><br />
                    <asp:Label ID="titleLabel" runat="server" Text='<%# Eval("title") %>' Font-Size="9pt" > </asp:Label></a>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>


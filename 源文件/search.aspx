<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="search.aspx.cs" Inherits="search" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <table style="width: 100%">
        <tr>
            <td style="text-align: center">
                <b>查询结果</b></td>
        </tr>
        <tr>
            <td align="center">
    <asp:Repeater ID="Repeater1" runat="server">
    <HeaderTemplate>
    <table style="text-align:center" ></HeaderTemplate><ItemTemplate><tr><td><%#Eval("bh") %></td><td><a href="show.aspx?id=<%#Eval("bh") %>" target="_blank"><%#Eval("title") %></a></td></tr></ItemTemplate>
    
    <FooterTemplate></table></FooterTemplate></asp:Repeater>
            </td>
        </tr>
    </table>
   
</asp:Content>


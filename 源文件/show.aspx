<%@ Page Language="C#" AutoEventWireup="true" CodeFile="show.aspx.cs" Inherits="show" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
             font-family:@Batang;
            font-size: xx-large;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center" style="height: 328px; width: 836px; font-size: small">
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:sqlConn %>" 
            
            SelectCommand="SELECT * FROM [product] WHERE ([bh] = @bh) ORDER BY [bh] DESC">
            <SelectParameters>
                <asp:QueryStringParameter DefaultValue="1" Name="bh" QueryStringField="bh" 
                    Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    
        <table align="center" class="style1">
            <tr>
                <td class="style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
    
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="bh" 
            DataSourceID="SqlDataSource1" style="font-size: x-large; margin-right: 0px;" 
                        Width="641px">
            <EditItemTemplate>
                bh:
                <asp:Label ID="bhLabel1" runat="server" Text='<%# Eval("bh") %>' />
                <br />
                pic:
                <asp:TextBox ID="picTextBox" runat="server" Text='<%# Bind("pic") %>' />
                <br />
                title:
                <asp:TextBox ID="titleTextBox" runat="server" Text='<%# Bind("title") %>' />
                <br />
                contents:
                <asp:TextBox ID="contentsTextBox" runat="server" 
                    Text='<%# Bind("contents") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                    CommandName="Update" Text="更新" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="取消" />
            </EditItemTemplate>
            <InsertItemTemplate>
                pic:
                <asp:TextBox ID="picTextBox" runat="server" Text='<%# Bind("pic") %>' />
                <br />
                title:
                <asp:TextBox ID="titleTextBox" runat="server" Text='<%# Bind("title") %>' />
                <br />
                contents:
                <asp:TextBox ID="contentsTextBox" runat="server" 
                    Text='<%# Bind("contents") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                    CommandName="Insert" Text="插入" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="取消" />
            </InsertItemTemplate>
            <ItemTemplate>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <table border="2" class="style1">
                    <tr>
                        <td colspan="2">
                            帽子的详细信息</td>
                    </tr>
                    <tr align="center">
                        <td>
                            编号:&nbsp;
                        </td>
                        <td>
                            <asp:Label ID="idLabel" runat="server" Text='<%# Eval("bh") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <img alt="" src='image/<%#Eval("pic") %>' style="width:200px; height:200px" /></td>
                        <td>
                            <asp:Label ID="picLabel" runat="server" Text='<%# Bind("pic") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            标题:&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                        <td>
                            <asp:Label ID="titleLabel" runat="server" Text='<%# Bind("title") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            内容：</td>
                        <td>
                            <asp:Label ID="contentsLabel" runat="server" Text='<%# Bind("contents") %>' />
                        </td>
                    </tr>
                </table>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
            </ItemTemplate>
        </asp:FormView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:sqlConn %>" 
                        SelectCommand="SELECT * FROM [product] WHERE ([bh] = @bh) ORDER BY [bh] DESC">
                        <SelectParameters>
                            <asp:QueryStringParameter DefaultValue="1" Name="bh" QueryStringField="bh" 
                                Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>

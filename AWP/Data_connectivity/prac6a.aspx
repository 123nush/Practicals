<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <br />
        <asp:Label ID="Label1" runat="server" Text="Control id"></asp:Label>
        :
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
    <br />
   
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:tempdbConnectionString %>" 
            SelectCommand="SELECT [control_id] FROM [student_temp]"></asp:SqlDataSource>
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            Text="Check record" />
        <br />
        <br />
        <asp:TextBox ID="TextBox2" runat="server" Rows="5" TextMode="MultiLine"></asp:TextBox>
        <br />
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource3">
            <ItemTemplate>
                control_id:
                <asp:Label ID="control_idLabel" runat="server" 
                    Text='<%# Eval("control_id") %>' />
                <br />
                name:
                <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
<br />
                email:
                <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
                <br />
                contactno:
                <asp:Label ID="contactnoLabel" runat="server" Text='<%# Eval("contactno") %>' />
                <br />
                address:
                <asp:Label ID="addressLabel" runat="server" Text='<%# Eval("address") %>' />
                <br />
                <br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:tempdbConnectionString %>" 
            SelectCommand="SELECT * FROM [student_temp]"></asp:SqlDataSource>
        <br />
    </div>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:tempdbConnectionString %>" 
        SelectCommand="SELECT [control_id] FROM [student_temp]"></asp:SqlDataSource>
   
        <asp:ListBox ID="ListBox1" runat="server" DataSourceID="SqlDataSource2" 
            DataTextField="control_id" DataValueField="control_id" 
            onselectedindexchanged="ListBox1_SelectedIndexChanged"></asp:ListBox>
    </form>
</body>
</html>

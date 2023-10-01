<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default4.aspx.cs" Inherits="Default4" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="name" runat="server" Text="Name"></asp:Label>
        :
        <asp:TextBox ID="name_field" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="control_id" runat="server" Text="Control Id"></asp:Label>
        :<asp:TextBox ID="control_id_field" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="email" runat="server" Text="Email"></asp:Label>
        :<asp:TextBox ID="email_field" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="contact_no" runat="server" Text="Contact Number"></asp:Label>
        :<asp:TextBox ID="contact_no_field" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="address" runat="server" Text="Address"></asp:Label>
        :<asp:TextBox ID="address_field" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="insert" runat="server" onclick="insert_Click" 
            Text="Insert Data" />
        <br />
        <br />
        Select Control Id to update student information:<br />
        <asp:ListBox ID="ListBox1" runat="server" AutoPostBack="True" 
            DataSourceID="SqlDataSource1" DataTextField="control_id" 
            DataValueField="control_id" 
            onselectedindexchanged="ListBox1_SelectedIndexChanged" Rows="8">
        </asp:ListBox>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:masterConnectionString %>" 
            SelectCommand="SELECT [control_id] FROM [Student]"></asp:SqlDataSource>
        <br />
        <asp:Label ID="n" runat="server" Text="Name"></asp:Label>
        :
        <asp:TextBox ID="n_field" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="e" runat="server" Text="Email"></asp:Label>
        :<asp:TextBox ID="e_field" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="con" runat="server" Text="Contact Number"></asp:Label>
        :<asp:TextBox ID="con_field" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="a" runat="server" Text="Address"></asp:Label>
        :<asp:TextBox ID="a_field" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="update" runat="server" onclick="update_Click" 
            Text="Update Data" />
        <br />
        <br />
        Select Control Id to delete Student record<br />
        <asp:ListBox ID="ListBox2" runat="server" 
            DataSourceID="SqlDataSource2" DataTextField="control_id" 
            DataValueField="control_id" 
            Rows="8" >
        </asp:ListBox>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:masterConnectionString %>" 
            SelectCommand="SELECT [control_id] FROM [Student]"></asp:SqlDataSource>
        <br />
        <asp:Button ID="delete" runat="server" onclick="delete_Click" 
            Text="Delete Data" />
        <br />
    </div>
    </form>
</body>
</html>

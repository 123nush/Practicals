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
        <br />
        <asp:GridView ID="binding" runat="server" OnSelectedIndexChanged="binding_SelectedIndexChanged" 
        OnrowDeleting="binding_OnrowDeleting" OnRowEditing="binding_OnRowEditing">
        <Columns>
        <asp:CommandField  ShowEditButton="true"/>
        <asp:CommandField ShowDeleteButton="true" />
        <asp:CommandField ShowSelectButton="true" />
        </Columns>
        </asp:GridView>
        <br />
        <p>Complete practical till <%# Request.Browser.Browser%></p>
    <asp:GridView ID="result" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource2" 
   >
        <Columns>
            <asp:BoundField DataField="control_id" HeaderText="control_id" 
                SortExpression="control_id" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="contact_no" HeaderText="contact_no" 
                SortExpression="contact_no" />
            <asp:BoundField DataField="address" HeaderText="address" 
                SortExpression="address" />
            <asp:CommandField  ShowDeleteButton="true"/>
            <asp:CommandField ShowEditButton="true" />
        </Columns>
    </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:masterConnectionString %>" 
            SelectCommand="SELECT * FROM [Student]"
            UpdateCommand="UPDATE Student set name=@name where control_id=@control_id"
            DeleteCommand="Delete student where control_id=@control_id" 
            ConflictDetection="CompareAllValues"></asp:SqlDataSource>
   
        <br />
        <asp:ListBox ID="ListBox1" runat="server" AutoPostBack="True" 
            DataSourceID="SqlDataSource1" DataTextField="control_id" 
            DataValueField="control_id" 
            onselectedindexchanged="ListBox1_SelectedIndexChanged"></asp:ListBox>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:masterConnectionString %>" 
            SelectCommand="SELECT [control_id] FROM [Student]"></asp:SqlDataSource>
        <asp:Label ID="Name" runat="server" Text="Label"></asp:Label>
        :
        <br />
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Update" />
        <br />
        <br />
   
    </div>
    </form>
</body>
</html>

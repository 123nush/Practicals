<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h2>Fetching All control Id's from Student Table</h2>
        <p>
            <asp:ListBox ID="ListBox1" runat="server" DataSourceID="SqlDataSource1" 
                DataTextField="control_id" DataValueField="control_id"></asp:ListBox>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:masterConnectionString %>" 
                SelectCommand="SELECT [control_id] FROM [Student]"></asp:SqlDataSource>
        </p>

    </div>
    </form>
</body>
</html>

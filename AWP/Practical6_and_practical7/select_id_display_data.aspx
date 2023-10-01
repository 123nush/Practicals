<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default3.aspx.cs" Inherits="Default3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h2>Select Control Id To Get all information of student</h2>
        <p>
            <asp:ListBox ID="ListBox1" runat="server" DataSourceID="SqlDataSource1" 
                DataTextField="control_id" DataValueField="control_id"></asp:ListBox>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:masterConnectionString %>" 
                SelectCommand="SELECT [control_id] FROM [Student]"></asp:SqlDataSource>
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Button ID="submit" runat="server" onclick="submit_Click" Text="Submit" />
        </p>
        <p>
            <asp:Label ID="student_info" runat="server" Text="Student Information" 
                Visible="False"></asp:Label>
            :</p>
        <p>
            <asp:TextBox ID="info" runat="server" AutoPostBack="True" Rows="5" 
                TextMode="MultiLine" Wrap="False" Visible="False"></asp:TextBox>
        </p>

    </div>
    </form>
</body>
</html>

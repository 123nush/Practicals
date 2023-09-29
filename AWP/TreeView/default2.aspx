<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .centered-content {
        text-align: center; 
        padding: 20px;
        border: 1px solid #ccc; 
    }</style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <br />
    </div>

    <asp:TreeView ID="TreeView1" runat="server" ShowLines="True" Width="165px" 
        onselectednodechanged="TreeView1_SelectedNodeChanged" OnTreeNodeCollapsed="TreeView1_TreeNodeCollapsed">
        <Nodes>
            <asp:TreeNode Text="SFC" Value="SFC" Checked="True">
                <asp:TreeNode Text="BSC IT" Value="BSC IT" Checked="True"></asp:TreeNode>
                <asp:TreeNode Text="BMS" Value="BMS" Checked="True"></asp:TreeNode>
                <asp:TreeNode Text="BCA" Value="BCA" Checked="True"></asp:TreeNode>
            </asp:TreeNode>
            <asp:TreeNode Text="Commerce" Value="Commerce" Checked="True" 
                ShowCheckBox="True">
                <asp:TreeNode Text="FY BCOM" Value="FY BCOM" Checked="True" ></asp:TreeNode>
                <asp:TreeNode Text="SY BCOM" Value="SY BCOM" Checked="True"></asp:TreeNode>
            </asp:TreeNode>
            <asp:TreeNode Text="Arts" Value="Arts" Checked="True"></asp:TreeNode>
        </Nodes>
    </asp:TreeView>
    
    <asp:DataList ID="DataList1" runat="server">
    <ItemTemplate><%# Eval("text")%></ItemTemplate>
    </asp:DataList>
   
 
    <br />
    
   <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
        Text="Get All Selected Nodes" />
   
 
    <br />
    <br />
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    <br />
    <br />
    <asp:Button ID="remove" runat="server" onclick="remove_Click" Text="Remove" />
    &nbsp;
    <br />
    <asp:Label ID="Label2" runat="server" Text="Enter node name"></asp:Label>
    :<asp:TextBox ID="node_name" runat="server" AutoPostBack="True"></asp:TextBox>
    <br />
    <asp:Button ID="add" runat="server" onclick="add_Click1" Text="Add" />
    <br />
    <br />
    <asp:Button ID="expand" runat="server" onclick="expand_Click" Text="Expand" />
    <br />
   
 
    </form>
</body>
</html>

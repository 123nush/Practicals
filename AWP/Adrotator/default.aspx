<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .Add
        {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%); 
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="Add">
    <br />
    <br />
    <asp:AdRotator AdvertisementFile="XMLFile.xml"  BackColor="#CCFFFF"
 Target="_blank" ToolTip="Loreal Paris" runat="server" onadcreated="Unnamed1_AdCreated"  />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
        <br />
       
    </div>
    </form>
</body>
</html>

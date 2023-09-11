<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Implementation of calender</title>
    <style>
        .cal
        {
            background-color:Aqua;
        }
    </style>
</head>
<body>
   
    <div>
   <h1>Calender</h1>
    </div>
 <form id="Form1" runat="server" visible="True">
  <asp:Label ID="Label1" runat="server" Enabled="True" Text="Selected date"></asp:Label>
    <br />
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="Know The TimeLine"></asp:Label>
    <br />
    <asp:TextBox ID="TextBox2" runat="server" Visible="False"></asp:TextBox>
    <asp:Calendar ID="Calendar1" runat="server" Caption="Calender Implementation" 
        CaptionAlign="Top" CellPadding="20" CellSpacing="10" CssClass="cal" 
        EnableTheming="True" FirstDayOfWeek="Monday" TabIndex="1" 
        onselectionchanged="Calendar1_SelectionChanged">
        <SelectedDayStyle BackColor="White" ForeColor="Black" />
        <SelectorStyle BackColor="White" BorderColor="#FF0066" BorderWidth="10px" />
    </asp:Calendar>

        <br />
   

        </form>
</body>
</html>

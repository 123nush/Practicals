<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
   <h1>Sanika</h1>
    </div>
 <form runat="server">
    <asp:Calendar ID="Calendar1" runat="server" Caption="Calender Implementation" 
        CaptionAlign="Top" CellPadding="20" CellSpacing="10" CssClass="cal" 
        EnableTheming="True" FirstDayOfWeek="Monday" TabIndex="1">
        <SelectedDayStyle BackColor="White" ForeColor="Black" />
        <SelectorStyle BackColor="White" BorderColor="#FF0066" BorderWidth="10px" />
    </asp:Calendar>
        </form>
</body>
</html>

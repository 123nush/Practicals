<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="margin:50px">
    <asp:Label ID="name" runat="server" Text="Name"></asp:Label><br/>
    <asp:TextBox runat="server" ID="name_field"></asp:TextBox><br />
        <asp:RequiredFieldValidator ID="name_val" runat="server" ErrorMessage="Name is mandatory" ControlToValidate="name_field" Display="Dynamic"></asp:RequiredFieldValidator>

        <br />

     <asp:Label ID="email" runat="server" Text="Email"></asp:Label><br/>
      <asp:TextBox runat="server" ID="email_field"   ></asp:TextBox><br />
        <asp:RegularExpressionValidator ID="email_val" runat="server" 
            ErrorMessage="Enter Valid Email" ControlToValidate="email_field" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
            Display="Dynamic"></asp:RegularExpressionValidator>

        <br />

       <asp:Label ID="password" runat="server" Text="Password"></asp:Label><br/>
      <asp:TextBox runat="server" ID="password_field" TextMode="Password"></asp:TextBox><br />

      <asp:Label ID="confirm_password" runat="server" Text="Conform Password"></asp:Label><br/>
      <asp:TextBox runat="server" ID="confirm_password_field" TextMode="Password"></asp:TextBox><br /><br />
       <asp:CompareValidator ID="password_val" runat="server" 
            ErrorMessage="Password not matches" ControlToCompare="confirm_password_field" 
            ControlToValidate="password_field" Display="Dynamic"></asp:CompareValidator>
        <br />
      <asp:Label ID="age" runat="server" Text="Age"></asp:Label><br/>
      <asp:TextBox runat="server" ID="age_field" ></asp:TextBox>
        <br />
        <asp:RangeValidator ID="age_val" runat="server" 
            ErrorMessage="Age must be greater than 18" MaximumValue="50" 
            MinimumValue="18" Type="Integer" ControlToValidate="age_field" 
            Display="Dynamic"></asp:RangeValidator>
        <br />
        <br />
          <asp:Label ID="marks" runat="server" Text="Marks"></asp:Label><br/>
      <asp:TextBox runat="server" ID="marks_field" ></asp:TextBox><br /><br />
        <asp:CustomValidator ID="marks_val" runat="server" 
            ErrorMessage="Your marks not fits in Criteria" Display="Dynamic" 
            ControlToValidate="marks_field" OnServerValidate="validate_marks"></asp:CustomValidator>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Submit" 
            onclick="Button1_Click"  />
        <br />
        <br />
        <asp:Label runat="server" ID="reference" Text="For More Details"></asp:Label>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="https://vazecollege.net/" Text="Click Here"></asp:HyperLink>
        <asp:Label ID="preview" runat="server" Enabled="False" Text="Preview:" 
            Visible="False"></asp:Label>
        <br />
        <br />
        <asp:ValidationSummary ID="summary" runat="server" ShowMessageBox="True" />

        </div>
    </form>
</body>
</html>

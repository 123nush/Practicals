<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <h1 style="text-align:center">
       Performing Different validations
    </h1>
    </div>
   <div style="margin:50px 50px 50px 130px">
   <h2>Application form</h2>
   <asp:Label runat="server" Text="Name" ID="name"></asp:Label><br />
   <asp:TextBox ID="name_field" runat="server" 
    ToolTip="Enter Your name"  ></asp:TextBox>
   <asp:RequiredFieldValidator runat="server" ControlToValidate="name_field" 
           ID="mandatory" ErrorMessage="Name must be filled" ForeColor="Red" 
           ToolTip="Enter Your  Name" Display="Dynamic" ViewStateMode="Enabled" AccessKey="t"></asp:RequiredFieldValidator>
       <br />
       <br />

    <asp:Label runat="server" Text="Email" ID="email"></asp:Label><br />
   <asp:TextBox ID="email_field" runat="server" ToolTip="Enter Your Email"></asp:TextBox>
   <asp:RegularExpressionValidator runat="server" id="regular" Display="Dynamic" 
           ErrorMessage="Invalid Email " ForeColor="Red" 
           ValidationExpression="\S+@\w[.]\w" ControlToValidate="email_field"></asp:RegularExpressionValidator>
       <br />
       <br />

    <asp:Label runat="server" Text="Age" ID="age"></asp:Label><br />
   <asp:TextBox ID="age_field" runat="server" AutoPostBack="true" ontextchanged="age_field_TextChanged" 
          ></asp:TextBox>
   <asp:CustomValidator runat="server" ID="age_range" 
           ClientValidationFunction="valid" ControlToValidate="age_field" 
           Display="Dynamic" ErrorMessage="Age must be more than 20" ForeColor="Red"></asp:CustomValidator>
       <br />
       <br />

    <asp:Label runat="server" Text="Marks" ID="marks"></asp:Label><br />
   <asp:TextBox ID="marks_field" runat="server"></asp:TextBox>
   <asp:RangeValidator ID="marks_range" runat="server" ControlToValidate="marks_field"
   MaximumValue="100" MinimumValue="0" Type="Integer" 
           ErrorMessage="Marks  Must be between 0-100 " ForeColor="Red"></asp:RangeValidator>
       <br />
       <br />
       <br />
    <asp:Button id="submit"  runat="server" Text="Submit"/>

<asp:ValidationSummary ID="ValidationSummary1"  runat="server" ForeColor="Red" />  
   </div>
   
    </form>
    <script type="text/javascript">
        function valid(source, arguments) {
            if (arguments.Value < 20) {
                arguments.IsValid = true;
            }
            else {
                arguments.IsValid = false;
            }
        }
    </script>
</body>
</html>

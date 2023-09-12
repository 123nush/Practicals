<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default4.aspx.cs" Inherits="Default4" Theme="boring" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div style="width:1000px">
<h2 style="text-align:center; background-color: #1d3a91; color:white ;height:50px">
       V. G. Vaze College
    </h2>
   
    <div style="text-align:center">
    <asp:Label runat="server" ID="form_title"   Text="Admission Form" 

        Font-Size="Medium" Font-Bold="True"></asp:Label><br />
        <hr />
    </div>
    <div style="margin:50px">
    <asp:Label ID="name" runat="server" Text="Name"></asp:Label><br/>
    <asp:TextBox runat="server" ID="name_field"></asp:TextBox><br />


     <asp:Label ID="email" runat="server" Text="Email"></asp:Label><br/>
      <asp:TextBox runat="server" ID="email_field"   ></asp:TextBox><br />

       <asp:Label ID="password" runat="server" Text="Password"></asp:Label><br/>
      <asp:TextBox runat="server" ID="password_field" TextMode="Password"></asp:TextBox><br />


     <asp:Label ID="address" runat="server" Text="Address"></asp:Label><br/>
      <asp:TextBox runat="server" ID="address_field" Rows="3" ></asp:TextBox><br />


      <asp:Label ID="age" runat="server" Text="Age"></asp:Label><br/>
      <asp:TextBox runat="server" ID="age_field" 
            ></asp:TextBox>
        <br />
        <br />

        <asp:Label ID="gender" runat="server" Text="Gender"></asp:Label><br/>
        <asp:RadioButton ID="gender_male" GroupName="select_gender" runat="server"  Text="Male" /><br />
         <asp:RadioButton ID="gender_female" GroupName="select_gender" runat="server"  Text="Female" /><br />
          <asp:RadioButton ID="gender_other" GroupName="select_gender" runat="server"  Text="Other" />
        <br />
        <br />

        <asp:Label ID="hobbies" runat="server" Text="Hobbies"></asp:Label><br/>
        <asp:CheckBox runat="server" ID="select_hobbies1" Text="Dancing"/><br />
          <asp:CheckBox runat="server" ID="select_hobbies2" Text="Reading"/><br />
          <asp:CheckBox runat="server" ID="select_hobbies3" Text="Drawing"/><br />
            <asp:CheckBox runat="server" ID="select_hobbies4" Text="Playing"/>
        <br />
        <br />
         <asp:Label ID="stream" runat="server" Text="stream"></asp:Label><br/>
         <asp:DropDownList ID="select_stream" runat="server">
             <asp:ListItem>Science</asp:ListItem>
             <asp:ListItem>Commerce</asp:ListItem>
             <asp:ListItem>Arts</asp:ListItem>
             <asp:ListItem>Self Financing cource</asp:ListItem>
         </asp:DropDownList>
        <br />
        <br />

         <asp:Label ID="sfc" runat="server" Text="SFC"></asp:Label><br/>
         <asp:ListBox ID="select_hobbie" runat="server" >
         <asp:ListItem>BSC IT</asp:ListItem>
            <asp:ListItem>BSC BT</asp:ListItem>
            <asp:ListItem>BBA</asp:ListItem>
            <asp:ListItem>BMS</asp:ListItem>
        </asp:ListBox>
        <br />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Submit" 
             />
        <br />

         </div>
</asp:Content>


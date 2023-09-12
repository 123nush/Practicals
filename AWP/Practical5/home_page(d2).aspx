<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" Theme="boring" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
   <h2 class="heading">From The Principal’s Desk</h2>
      
   <p>
“Enfold Challenges and Emerge with Opportunities”

Prof. (Dr.) Preeta Nilesh, Principal

Education drives out ignorance and emboldens us towards studied thought and action. Education empowers and energises. Education is undoubtedly, an effective medium of social transformation. It is education that helps shape careers and contributes to nation building. Vaze College, dedicated to the academic progression of students and health and safety of the community, is the dream come true of the commitment to education of its founder Chairman, Shri Bhausaheb Kelkar.
   </p>
   <br />
   <br />
   <asp:Label runat="server" Text="Our Achievevments"></asp:Label>
     <asp:BulletedList ID="BulletedList1" runat="server" CssClass="listcolor"  >
         <asp:ListItem>First affiliated College in Maharashtra, Accredited by NAAC with ‘A’ Grade in First Cycle. Reaccredited with ‘A’ Grade in Second and Third Cycles.</asp:ListItem>
         <asp:ListItem>Junior College Awarded ‘A’ Grade by Maharashtra State Education Board Gradation in 2008.</asp:ListItem>
         <asp:ListItem>Biotech Department was ranked 5th in India by Biospectrum.</asp:ListItem>
         <asp:ListItem>College With Potential For Excellence.</asp:ListItem>
         <asp:ListItem>First Recipient of Best College Award (Urban Area) by University of Mumbai.</asp:ListItem>
         <asp:ListItem>Awarded STAR SCHEME of DBT.</asp:ListItem>

    </asp:BulletedList>
   </div>
  
</asp:Content>


using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
         string g;
        preview.Visible = true;
        preview_field.Visible = true;
        if(gender_male.Checked){
            g="Male" ;
        }
        else if(gender_female.Checked){
            g="Female";
        }
        else{
            g="other";
        }
        
        preview_field.Text = "Name:"+name_field.Text+"\nEmail:" + email_field.Text+ "\nPassword:" + password_field.Text + "\nAge:" + age_field.Text + "\nAddress:" + address_field.Text + "\nGender:" +g ;
        

    }
}

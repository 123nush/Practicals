using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Unnamed1_AdCreated(object sender, AdCreatedEventArgs e)
    {
        Label1.Visible = true;
        Label1.Text = e.ImageUrl + " ";
        Label1.Text += e.NavigateUrl;
    }
  
}

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
       // Response.Write(Request.Params["product"]);
        if (Request.Params["product"] != null)
        {
            lblSelection.Text = "You chose: ";
            lblSelection.Text += Request.Params["product"];
        }
    }
}

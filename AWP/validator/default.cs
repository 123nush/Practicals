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
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void validate_marks(object sender, ServerValidateEventArgs e)
    {
        int m = Convert.ToInt32(e.Value);
        if (m >= 80)
        {
            e.IsValid = true;
        }
        else
        {
            e.IsValid = false;
        }
    }
}

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
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        Label1.Visible = true;
        Label1.Text = Calendar1.SelectedDate.ToShortDateString();
        TextBox2.Visible = true;
        int d1 = Calendar1.TodaysDate.Day;
        int d2 = Calendar1.SelectedDate.Day;
        int diff = d2 - d1;
        if (diff > 0)
        {
            TextBox2.Text = diff + " days to go";
        }
        else if (diff < 0)
        {
            diff = -(diff);
            TextBox2.Text = diff + " days Passed";
        }
        else
        {
            TextBox2.Text = "Today's date";
        }
    }
}

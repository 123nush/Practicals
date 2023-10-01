using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class Default3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void submit_Click(object sender, EventArgs e)
    {
        string c_id=ListBox1.SelectedValue;
        student_info.Visible = true;
        info.Visible = true;
        SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=master;Integrated Security=True");
        SqlCommand cmd=new SqlCommand("SELECT * FROM Student WHERE control_id="+c_id,con);
        info.Text="";
        try
        {
            con.Open();
            SqlDataReader reader;
            reader=cmd.ExecuteReader();
            if (reader.Read())
            {
                info.Text += "Name:" + reader["name"] + "\nemail:" + reader["email"] + "\ncontact_no:" + reader["contact_no"] + "\nAddress:" + reader["address"];
            }
          //  reader.Close();
            con.Close();
        }
        catch (SqlException)
        {
            Response.Write("Error:"+e);
        }

    }
}

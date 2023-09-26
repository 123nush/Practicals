using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Text;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string c_id=TextBox1.Text;
        SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=tempdb;Integrated Security=True");

        SqlCommand cmd = new SqlCommand("SELECT * FROM student_temp WHERE control_id="+c_id,con);
        try
        {
            con.Open();
            SqlDataReader reader;
            reader = cmd.ExecuteReader();
            // StringBuilder s = new StringBuilder();
            string s = " ";
            reader.Read();
            
                s += reader["control_id"] + " " + reader["name"] + " " + reader["email"] + " " + reader["contactno"];
                TextBox2.Text = s;

            
            reader.Close();

        }
        catch (Exception err)
        {
            Console.WriteLine(err);
        }
        finally 
        {
            con.Close();
        }
    }
    protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Console.WriteLine("HIIIIIIIIIIIIIIII");
    }
}

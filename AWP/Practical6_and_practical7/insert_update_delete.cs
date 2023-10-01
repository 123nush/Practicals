using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class Default4 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    //code to insert data
    protected void insert_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=master;Integrated Security=True");
        SqlCommand cmd = new SqlCommand("INSERT INTO student(control_id,name,email,contact_no,address) VALUES ('"+control_id_field.Text+"','"+name_field.Text+"','"+email_field.Text+"','"+contact_no_field.Text+"','"+address_field.Text+"')", con);
        try
        {
            con.Open();
            int number = cmd.ExecuteNonQuery();
            if (number >=1)
            {
                Response.Write("Data Inserted Successfully");
            }
            else
            {
                Response.Write("Data Not Inserted");
            }
            //  reader.Close();
            con.Close();
        }
        catch (SqlException)
        {
            Response.Write("Error:" + e);
        }

    }
    //code to display data in listbox
    protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string c_id = ListBox1.SelectedValue;
        SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=master;Integrated Security=True");
        SqlCommand cmd = new SqlCommand("SELECT * FROM Student WHERE control_id=" + c_id, con);
        try
        {
            con.Open();
            SqlDataReader reader;
            reader = cmd.ExecuteReader();
            if (reader.Read())
            {
                n_field.Text = reader["name"].ToString();
                e_field.Text = reader["email"].ToString();
                con_field.Text = reader["contact_no"].ToString();
                a_field.Text = reader["address"].ToString();
            }
            con.Close();
        }
        catch (SqlException)
        {
            Response.Write("Error:" + e);
        }
    }
    //code to update data
    protected void update_Click(object sender, EventArgs e)
    {
        string c_id = ListBox1.SelectedValue;
        SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=master;Integrated Security=True");
        SqlCommand cmd = new SqlCommand("UPDATE Student set name=@name,contact_no=@contact_no,address=@address,email=@email WHERE control_id=@control_id", con);
        cmd.Parameters.AddWithValue("@name", n_field.Text);
        cmd.Parameters.AddWithValue("@contact_no", con_field.Text);
        cmd.Parameters.AddWithValue("@address", a_field.Text);
        cmd.Parameters.AddWithValue("@email", e_field.Text);
        cmd.Parameters.AddWithValue("@control_id", c_id);
        try
        {
            con.Open();
            int number = cmd.ExecuteNonQuery();
            if (number >= 1)
            {
                Response.Write("Data Updated Successfully");
            }
            else
            {
                Response.Write("Data Not Inserted");
            }
            //  reader.Close();
            con.Close();
        }
        catch (SqlException)
        {
            Response.Write("Error:" + e);
        }
    }
//code to delete data
    protected void delete_Click(object sender, EventArgs e)
    {
        string c_id = ListBox2.SelectedValue;
        SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=master;Integrated Security=True");
        SqlCommand cmd = new SqlCommand("DELETE FROM Student WHERE control_id=" + c_id, con);
        try
        {
            con.Open();
            int number;
            number = cmd.ExecuteNonQuery();
            if (number >= 1)
            {
                Response.Write("Data Deleted successfully");
                //info.Text += "Name:" + reader["name"] + "\nemail:" + reader["email"] + "\ncontact_no:" + reader["contact_no"] + "\nAddress:" + reader["address"];
            }
            else
            {
                Response.Write("Data is not Deleted");
            }
            //  reader.Close();
            con.Close();
        }
        catch (SqlException)
        {
            Response.Write("Error:" + e);
        }
    }
}

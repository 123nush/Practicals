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
    protected void Button1_Click(object sender, EventArgs e)
    {
 
        SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=tempdb;Integrated Security=True");

        SqlCommand cmd = new SqlCommand("INSERT INTO student_temp (control_id,name,email,contactno,address) VALUES('" + TextBox1.Text + "','"+TextBox2.Text+"','"+TextBox3.Text+"','"+TextBox4.Text+"','"+TextBox5.Text+"')", con);
        //SqlCommand cmd = new SqlCommand("INSERT INTO(control_id,name,email,contactno,address) VALUES(' 2021080111 ',' Sakshi','hjk@gmail.com ','11111111','Dombivili ')", con);
        try
        {
            con.Open();
           
            int reader = cmd.ExecuteNonQuery();
          Label6.Text = reader.ToString() + " Inserted successfully";
         //   Label6.Text = "Hiii";

        }
        catch (Exception err)
        {
            Console.WriteLine(err);
            Label6.Text = "Error inserting record. ";
            Label6.Text += err.Message;
        }
        finally
        {
            con.Close();
        }
    }
}

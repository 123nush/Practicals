using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.IO;
public partial class Default2 : System.Web.UI.Page
{
    public class student
    {
        public string name{get; set;}
       public  string roll_no{get; set;}
        public string phone{get; set;}
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        string file = Path.Combine(Request.PhysicalApplicationPath, @"XMLFile2.xml");
        FileStream fs = new FileStream(file, FileMode.Open);
        XmlTextReader r = new XmlTextReader(fs);
        List<student> student=new List<student>();
        while (r.Read())
        {
            if (r.NodeType == XmlNodeType.Element && r.Name == "student")
            {
                student newStudent = new student();
               //newStudent.name=r.GetAttribute("name");
               // newStudent.roll_no =r.GetAttribute("roll_no");
                while (r.NodeType!=XmlNodeType.EndElement)
                {
                  //  r.NodeType != XmlNodeType.EndElement
                    r.Read();
                    // Look for Price subtags.
                    if (r.Name == "name")
                    {
                        while (r.NodeType != XmlNodeType.EndElement)
                        {
                            r.Read();
                            if (r.NodeType == XmlNodeType.Text)
                            {
                                newStudent.name = r.Value;
                            }
                        }
                    }
                    else if (r.Name == "roll_no")
                    {
                        while (r.NodeType != XmlNodeType.EndElement)
                        {
                            r.Read();
                            if (r.NodeType == XmlNodeType.Text)
                            {
                                newStudent.roll_no = r.Value;
                            }
                        }
                    }
                    else if ( r.Name == "phone")
                    {
                        while (r.NodeType != XmlNodeType.EndElement)
                        {
                            r.Read();
                            if (r.NodeType == XmlNodeType.Text)
                            {
                                newStudent.phone = r.Value;
                            }
                        }
                    }

                    // You could check for other Product nodes
                    // (such as Available, Status, etc.) here.
                }

                student.Add(newStudent);

            }
        }
        fs.Close();

        gridresult.DataSource = student;
        gridresult.DataBind();
    }

    
}

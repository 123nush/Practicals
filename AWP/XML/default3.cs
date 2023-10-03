using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.IO;
using System.Xml.Linq;
public partial class Default3 : System.Web.UI.Page
{
    public class student
    {
        public string name { get; set; }
        public string roll_no { get; set; }
        public string phone { get; set; }
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        string file = Path.Combine(Request.PhysicalApplicationPath, @"XMLFile.xml");
        XDocument doc = XDocument.Load(file);
        // Loop through all the nodes, and create the list of Product objects.
        List<student> students = new List<student>();
        Response.Write(doc.Element("students").Elements("student"));
       // Response.Write(doc.Elements("student"));
        foreach (XElement element in doc.Element("students").Elements("student"))
        {
            Response.Write(element);
            student newstudent = new student();
            var attribute = element.Attribute("name");
            if (attribute == null)
            {
                newstudent.name = (string)element.Element("name");
            }
            else
            {
                newstudent.name = (string)element.Attribute("name");
            }
            var attribute1 = element.Attribute("roll_no");
            if (attribute1 == null)
            {
                newstudent.roll_no= (string)element.Element("roll_no");
            }
            else
            {
                newstudent.roll_no = (string)element.Attribute("roll_no");
            }
            var attribute2 = element.Attribute("phone");
            if (attribute2 == null)
            {
                newstudent.phone = (string)element.Element("phone");
            }
            else
            {
                newstudent.phone = (string)element.Attribute("phone");
            }
            
          //  newstudent.roll_no = (string)element.Attribute("roll_no");
            //newstudent.phone = (string)element.Element("phone");
            students.Add(newstudent);
        }
        // Display the results.
        gridresult.DataSource = students;
        gridresult.DataBind();
    }
   
}

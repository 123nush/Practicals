using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.IO;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string file = Path.Combine(Request.PhysicalApplicationPath, @"XMLFile2.xml");
        FileStream fs = new FileStream(file, FileMode.Open);
        XmlTextReader r = new XmlTextReader(fs);
        StringWriter w = new StringWriter();
        while (r.Read())
        {
            if (r.NodeType == XmlNodeType.Whitespace) { continue; }
            w.Write("Type:");
            w.Write(r.NodeType.ToString());
            w.Write("\n");
            if (r.Name != "")
            {
                w.Write("Name:");
                w.Write(r.Name);
                w.Write("\n");
            }
            if (r.Value != "")
            {
                w.Write("Value:");
                w.Write(r.Value);
                w.Write("\n");
            }
            if (r.AttributeCount > 0)
            {
                w.Write("Attributes:");
                for (int i = 0; i < r.AttributeCount; i++)
                {
                    w.Write("Attribute:" + i);
                    w.Write(r.GetAttribute(i));
                    w.Write("\n");
                }
            }
            
            lbl.Text = w.ToString();
        }
        fs.Close();



    }
}

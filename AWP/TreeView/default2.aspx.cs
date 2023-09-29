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
    //to display checked nodes in DataLink
    protected void Button1_Click(object sender, EventArgs e)
    {
        TreeNodeCollection T;
        T = TreeView1.CheckedNodes;
        DataList1.DataSource = T;
        DataList1.DataBind();
        DataList1.Visible = true;
    }
    //To display all nodes
    protected void TreeView1_SelectedNodeChanged(object sender, EventArgs e)
    {
        Label1.Text="Parent Node:"+TreeView1.SelectedValue+"\n ChildNodes:";
     //   Label1.Text += TreeView1.SelectedNode.ChildNodes.Value;
        foreach (TreeNode nodes in TreeView1.SelectedNode.ChildNodes)
        {
            Label1.Text += nodes.Text + "\n";
        }
    }
    //to show which node is collapsed
    protected void TreeView1_TreeNodeCollapsed(object sender, TreeNodeEventArgs e)
    {
        Response.Write("Collapsed Node Is:" + e.Node.Value);
    }
    //to remove selected node
    protected void remove_Click(object sender, EventArgs e)
    {
        TreeNode T = TreeView1.SelectedNode;
        TreeView1.Nodes.Remove(T);
        Response.Write("Deleted Successfully");
    }
    //to add node
    protected void add_Click1(object sender, EventArgs e)
    {
        TreeNode newnode = new TreeNode();
        newnode.Text = node_name.Text;
        newnode.Selected = true;
        TreeView1.Nodes.Add(newnode);
    }

    protected void expand_Click(object sender, EventArgs e)
    {
        TreeNode node = TreeView1.SelectedNode;
        if (node.ChildNodes.Count > 0)
        {
            node.Expanded = true;
        }
        else
        {
            node.Expanded = true;
        }
    }
}

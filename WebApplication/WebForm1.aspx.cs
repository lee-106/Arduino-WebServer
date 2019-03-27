using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Windows.Forms;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        private String exp;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(string.IsNullOrEmpty((string)Session["test"]))
            {
                DTBdata fetch = new DTBdata();
                DTBImages images = new DTBImages();
                fetch.UpdateTable();
                images.insertImages();
            }
        }

        protected void adminpage_btn_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminPage.aspx");
        }
        
        protected void TreeView1_SelectedNodeChanged(object sender, EventArgs e)
        {
            exp = TreeView1.SelectedNode.Text;
            Session["test"] = exp;
            Response.Redirect("experiments.aspx");
        }
    }
}
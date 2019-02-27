using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DTBdata fetch = new DTBdata();
            fetch.UpdateTable();
        }

        protected void ex1Btn_Click(object sender, EventArgs e)
        {
            Response.Redirect("ex1Form.aspx");
        }

        protected void ex2Btn_Click(object sender, EventArgs e)
        {
            Response.Redirect("ex2Form.aspx");
        }

        protected void ex3Btn_Click(object sender, EventArgs e)
        {
            Response.Redirect("ex3Form.aspx");
        }

        protected void ex4Btn_Click(object sender, EventArgs e)
        {
            Response.Redirect("ex4Form.aspx");
        }

        protected void adminpage_btn_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminPage.aspx");
        }
    }
}
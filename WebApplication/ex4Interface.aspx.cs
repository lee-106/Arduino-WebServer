using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication
{
    public partial class ex4Interface : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
        protected void backBtn_Clicked(object sender, EventArgs e)
        {
            Response.Redirect("ex4Form.aspx);
        }
    }
}
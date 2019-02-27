using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Services;

namespace WebApplication
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        SqlConnection conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new SqlConnection("Data Source=LYLE-PC;Initial Catalog=myWebDB;Integrated Security=True");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //ADD
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //EDIT
        }

        protected void expddlist_SelectedIndexChanged(object sender, EventArgs e)
        {
            ObjGrid.DataBind();
            ProcedureGrid.DataBind();
        }
        
    }
}
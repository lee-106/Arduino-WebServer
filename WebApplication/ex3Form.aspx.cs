using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication
{

    public partial class ex3Form : System.Web.UI.Page
    {
        String server = "INICCALEE-PC";
        String database = "myWebDB";
        
        protected void Page_Load(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection())
            {
                conn.ConnectionString = "Server=" + server + ";Database=" + database + ";Trusted_Connection=true";
                SqlCommand command = new SqlCommand();
                SqlDataReader reader;
                try
                {
                    conn.Open();
                    command = new SqlCommand("SELECT * FROM ["+database+"].[dbo].[Experiment] WHERE Id = '3';", conn);
                    reader=command.ExecuteReader();
                    reader.Read();
                    titleText.Text = reader.GetString(1);
                    ObjectivesText.Text = reader.GetString(2);
                    ProcedureText.Text = reader.GetString(3);
                    conn.Close();
                }
                catch
                {
                    titleText.Text = "Cannot connect to the database";
                }
            }
        }

        protected void backBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm1.aspx");
        }

        protected void intBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("ex3Interface.aspx");
        }
    }
}
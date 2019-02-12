using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication
{
    public partial class ex4Form : System.Web.UI.Page
    {
        DTBdata fetch = new DTBdata();
        String server;
        String database;

        protected void Page_Load(object sender, EventArgs e)
        {
            server = fetch.returnServer();
            database = fetch.returnDB();

            using (SqlConnection conn = new SqlConnection())
            {
                conn.ConnectionString = "Server=" + server + ";Database=" + database + ";Trusted_Connection=true";
                SqlCommand command = new SqlCommand();
                SqlDataReader reader;
                try
                {
                    conn.Open();
                    command = new SqlCommand("SELECT * FROM [" + database + "].[dbo].[Experiment] WHERE Id = '4';", conn);
                    reader = command.ExecuteReader();
                    reader.Read();
                    titleText.Text = reader.GetString(1);
                    objectivesText.Text = reader.GetString(2);
                    procedureText.Text = reader.GetString(3);
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
            Response.Redirect("ex4Interface.aspx");
        }

        protected void ObjectivesText_TextChanged(object sender, EventArgs e)
        {
        
        }
    }
}
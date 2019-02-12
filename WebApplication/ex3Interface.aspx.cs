using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication
{
    public partial class ex3Interface : System.Web.UI.Page
    {
        String server = "INICCALEE-PC";
        String database = "myWebDB";


        protected void Page_Load(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection())
            {
                try
                {
                    conn.ConnectionString = "Server=" + server + ";Database=" + database + ";Trusted_Connection=true";
                    conn.Open();
                    SqlCommand command = new SqlCommand("IF NOT EXISTS (SELECT * FROM SYSOBJECTS WHERE NAME='SensorData' AND XTYPE='U') CREATE TABLE [" + database + "].[dbo].[SensorData](Humidity nvarchar(MAX) NOT NULL DEFAULT '0',Temperature nvarchar(MAX) NOT NULL DEFAULT '0')", conn);
                    command.ExecuteNonQuery();
                    conn.Close();
                    update();
                }
                catch
                {

                }
            }
            
        }

        public void update()
        {
            using (SqlConnection conn = new SqlConnection())
            {
                try
                {
                    while (Table1.Rows.Count > 1)
                    {
                        Table1.Rows.RemoveAt(1);
                    }
                    SqlCommand command = new SqlCommand();
                    conn.ConnectionString = "Server=" + server + ";Database=" + database + ";Trusted_Connection=true";
                    conn.Open();
                    command = new SqlCommand("SELECT * FROM SENSORDATA", conn);
                    SqlDataReader reader = command.ExecuteReader();
                    int counter = 1;
                    while (reader.Read())
                    {
                        TableRow row = new TableRow();
                        TableCell cell = new TableCell();
                        TableCell cell1 = new TableCell();
                        TableCell cell2 = new TableCell();
                        cell.Text = String.Format(counter+"", counter, 1);
                        row.Cells.Add(cell);
                        cell1.Text = String.Format(Convert.ToString(reader[0]), counter, 2);
                        row.Cells.Add(cell1);
                        cell2.Text = String.Format(Convert.ToString(reader[1]), counter, 3);
                        row.Cells.Add(cell2);
                        Table1.Rows.Add(row);
                        counter++;
                    }
                }
                catch
                {

                }
                conn.Close();
            }
            
        }
        protected void backBtn_Click1(object sender, EventArgs e)
        {
            Response.Redirect("ex3Form.aspx");
        }

        protected void enterBtn_Click(object sender, EventArgs e)
        {
            String Humidity="100";
            String Temperature="100";
            int counter=Table1.Rows.Count+1;
            using (SqlConnection conn = new SqlConnection())
            {
                try
                {
                    conn.ConnectionString = "Server=" + server + ";Database=" + database + ";Trusted_Connection=true";
                    conn.Open();
                    SqlCommand command = new SqlCommand("INSERT INTO [" + database + "].[dbo].[SensorData](Humidity,Temperature) VALUES('"+Humidity + "','" + Temperature +"');", conn);
                    command.ExecuteNonQuery();
                    conn.Close();
                }
                catch
                {

                }
                
            }
            update();
            }

        protected void clearBtn_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection())
            {
                try
                {
                    SqlCommand command = new SqlCommand();
                    conn.ConnectionString = "Server=" + server + ";Database=" + database + ";Trusted_Connection=true";
                    conn.Open();
                    command = new SqlCommand("DELETE FROM [" + database + "].[dbo].SensorData;", conn);
                    command.ExecuteNonQuery();
                    conn.Close();

                }
                catch
                {

                }
                update();
            }
        }
    }
}
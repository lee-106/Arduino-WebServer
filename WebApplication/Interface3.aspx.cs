using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO.Ports;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication
{
    public partial class Interface3 : System.Web.UI.Page
    {
        DTBdata fetch = new DTBdata();
        String server;
        String database;
        SerialPort arduino = new SerialPort();


        protected void Page_Load(object sender, EventArgs e)
        {
            server = fetch.returnServer();
            database = fetch.returnDB();
        }

        public void Fetch()
        {
            if (comBox.Text.Length != 0)
            {
                if (connectBtn.Text.Equals("Disconnect"))
                {
                    try
                    {
                        arduino = new SerialPort();
                        arduino.PortName = "COM" + comBox.Text;
                        arduino.BaudRate = 9600;
                        arduino.Open();
                        String temp = arduino.ReadLine();
                        arduino.Close();
                        arduino.Dispose();

                        messageText.Text = "There is data received";
                        Thread.Sleep(100);
                        if (temp.Length > 0)
                        {
                            tempText.Text = temp.Substring(1, temp.IndexOf('H') - 1);
                            humidityText.Text = temp.Substring(temp.IndexOf('H') + 1, (int)temp.Length - (temp.IndexOf('H') + 2));
                        }
                    }
                    catch
                    {
                        messageText.Text = "There is an error in fetching the data";
                    }
                    
                }
            }
            else
            {
                messageText.Text = "Missing input in COM PORT";
            }


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
                    while (dTable.Rows.Count > 1)
                    {
                        dTable.Rows.RemoveAt(1);
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
                        cell.Text = String.Format(counter + "", counter, 1);
                        row.Cells.Add(cell);
                        cell1.Text = String.Format(reader[0] + "", counter, 2);
                        row.Cells.Add(cell1);
                        cell2.Text = String.Format(reader[1] + "", counter, 3);
                        row.Cells.Add(cell2);
                        dTable.Rows.Add(row);
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
            Response.Redirect("WebForm1.aspx");
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
       
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (comBox.Text.Length != 0)
            {
                if (connectBtn.Text.Equals("Connect"))
                {
                    messageText.Text = "Connection to COM" + comBox.Text + " is set";
                    connectBtn.Text = "Disconnect";
                    comBox.ReadOnly = true;
                }
                else
                {
                    connectBtn.Text = "Connect";
                    messageText.Text = "Connection is terminated";
                    comBox.ReadOnly = false;
                }
            }
        }

        protected void saveBtn_Click(object sender, EventArgs e)
        {
            String Humidity = humidityText.Text;
            String Temperature = tempText.Text;
            int counter = dTable.Rows.Count + 1;
            if (!Humidity.Equals("") || !Temperature.Equals(""))
            {
                using (SqlConnection conn = new SqlConnection())
                {
                    try
                    {
                        conn.ConnectionString = "Server=" + server + ";Database=" + database + ";Trusted_Connection=true";
                        conn.Open();
                        SqlCommand command = new SqlCommand("INSERT INTO [" + database + "].[dbo].[SensorData](Humidity,Temperature) VALUES('" + Humidity + "','" + Temperature + "');", conn);
                        command.ExecuteNonQuery();
                        conn.Close();
                    }
                    catch
                    {

                    }

                }
                update();
            }

        }

        protected void enterBtn_Click(object sender, EventArgs e)
        {
            Fetch();
        }
    }
}

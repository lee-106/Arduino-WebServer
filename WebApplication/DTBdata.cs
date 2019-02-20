using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace WebApplication
{
    public class DTBdata
    {
        public String returnDB()
        {
            return "myWebDB";
        }
        public String returnServer()
        {
            return "PAULOPC\\SQLEXPRESS";
        }

        public void UpdateTable()
        {
                String server = this.returnServer();
                String database = this.returnDB();

                using (SqlConnection conn = new SqlConnection())
                {
                    conn.ConnectionString = "Server=" + server + ";Database=" + database + ";Trusted_Connection=true";
                    SqlCommand command = new SqlCommand();
                    try
                    {
                        conn.Open();
                        command = new SqlCommand("IF EXISTS(SELECT * FROM SYSOBJECTS WHERE NAME = 'ExperimentList' AND XTYPE = 'U') DROP TABLE [" + database + "].[dbo].[ExperimentList];",conn);
                        command.ExecuteNonQuery();
                        
                        command = new SqlCommand("CREATE TABLE [" + database + "].[dbo].[ExperimentList](Id int NOT NULL IDENTITY(1,1),Title varchar(50) NOT NULL DEFAULT '0',Objectives nvarchar(MAX) NOT NULL DEFAULT '0', Procedures1 nvarchar(MAX) NOT NULL DEFAULT '0',PRIMARY KEY(Id))", conn);
                        command.ExecuteNonQuery();
                        command = new SqlCommand("INSERT INTO ExperimentList(Title,Objectives,Procedures1) VALUES('Familiarization With Arduino','-To familiarize with the basics of using the arduino.\n-To interface the arduino input and output pins.','-Procedure1\n-Procedure2\n-Procedure3')", conn);
                        command.ExecuteNonQuery();
                        command = new SqlCommand("INSERT INTO ExperimentList(Title,Objectives,Procedures1) VALUES('Interfacing Arduino with Web App','-To interface with the Arduino and WiFi shield.\n - To test the connectivity by turning an LED on and off through the system.\n - To interface the PWM control of the arduino.\n-To control the light intensity using a control interface in the WebApp.','-Procedure1\n-Procedure2\n-Procedure3')", conn);
                        command.ExecuteNonQuery();
                        command = new SqlCommand("INSERT INTO ExperimentList(Title,Objectives,Procedures1) VALUES('Sending input from Arduino to Web App','-To process information from Arduino to Web App\n- To display the detected humidity and temperature from DHT11 Sensor\n-To be able to save the displayed data using button input',' - Procedure1\n-Procedure2\n-Procedure3')", conn);
                        command.ExecuteNonQuery();
                        command = new SqlCommand("INSERT INTO ExperimentList(Title,Objectives,Procedures1) VALUES('Rock, Paper, Scissors Game','-To Create a hardware interface (button, for rock, paper, and scissors)\n-To create the game rules(to be done by the user)\n-To connect 2 arduinos via UART\n-To display the score of both sides in the Web App\n-To display what the user inputs are on Web App',' -Procedure1\n-Procedure2\n-Procedure3')", conn);
                        command.ExecuteNonQuery();
                    conn.Close();
                    }
                    catch
                    {
                    }
                }
            
        }
    }
}
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
    
    public partial class ex4Interface : System.Web.UI.Page
    {
        


        SerialPort ArduinoPort1,ArduinoPort2;
        int score1Int, score2Int;


        protected void Page_Load(object sender, EventArgs asd)
        {
            Image1.ImageUrl = "~/Rock.PNG";
            Image2.ImageUrl = "~/Rock.PNG";
            Panel1.Style.Add("display", "inline-block");
            Panel2.Style.Add("display", "inline-block");
            
            if (Page.IsPostBack)
            {

                 ArduinoPort1 = new SerialPort();
                ArduinoPort2 = new SerialPort();
                if ((Port_TB1.Text.ToLower().Contains("com") && Port_TB2.Text.ToLower().Contains("com") )|| (!Port_TB1.Text.Equals(null) && !Port_TB2.Text.Equals(null)))
                {
                    ArduinoPort1.PortName = Port_TB1.Text;
                    
                    ArduinoPort2.PortName = Port_TB2.Text;
                    update_Lbl.Text = "Connection Established: " + ArduinoPort1.PortName + "," + ArduinoPort1.BaudRate + Environment.NewLine
                        + "Connection Established: " + ArduinoPort2.PortName + "," + ArduinoPort2.BaudRate;

                }
                else
                {
                    update_Lbl.Text = "Please fill in the textbox above with the proper port name (i.e. COM1)";
                }

                 score1Int = (int)Convert.ToUInt32(score1.Text);
                 score2Int = (int)Convert.ToUInt32(score2.Text);
            }

        }
        
        protected void backBtn_Clicked(object sender, EventArgs e)
        {
            Response.Redirect("ex4Form.aspx");
        }

        protected void tyrButton_Click(object sender, EventArgs e)
        {
            ArduinoPort1.Open();
            String text = ArduinoPort1.ReadLine();
            ArduinoPort1.Close();

        }
        protected void Port_TB_TextChanged(object sender, EventArgs e)
        {

        }
        protected void Connect_Btn_Click(object sender, EventArgs e)
        {

        }
        protected void Evaluate(object sender, EventArgs e)
        {
            Image1.ImageUrl = "~/Paper.PNG";
            try
            {
                string temp1 = "", temp2 = "";
                ArduinoPort1.Open();
                
                temp1 = ArduinoPort1.ReadLine();
                temp1 = temp1.ElementAt<char>(0)+"";
                choiceText1.Text = temp1;
                ArduinoPort1.Close();
                ArduinoPort1.Dispose();

                ArduinoPort2.Open();
                temp2 = ArduinoPort2.ReadLine();
                temp2 = temp2.ElementAt<char>(0) + "";
                choiceText2.Text = temp2;
                ArduinoPort2.Close();
                ArduinoPort2.Dispose();


                Thread.Sleep(100);
                statusText1.Text = (temp1.Length > 1)? "Input Received " : "Error in Input";
                
                if (temp1 == "R"){Image1.ImageUrl = "~/Rock.PNG";}
                else if (temp1 == "P"){Image1.ImageUrl = "~/Paper.PNG";}
                else {Image1.ImageUrl = "~/Scissors.PNG";}

                if (temp2 == "R") { Image2.ImageUrl = "~/Rock.PNG"; }
                else if (temp2 == "P") { Image2.ImageUrl = "~/Paper.PNG"; }
                else { Image2.ImageUrl = "~/Scissors.PNG"; }

                if (temp1 == "R" && temp2 == "S"){score1Int++;}
                else if(temp1 == "P" && temp2 == "R") { score1Int++; }
                else if (temp1 == "S" && temp2 == "P") { score1Int++; }
                else if (temp2 == "R" && temp1 == "S") { score2Int++; }
                else if (temp2 == "P" && temp1 == "R") { score2Int++; }
                else if (temp2 == "S" && temp1 == "P") { score2Int++; }
                score1.Text = score1Int+"";
                score2.Text = score2Int+"";
            }
            catch
            {

            }
            
        }
    }
}
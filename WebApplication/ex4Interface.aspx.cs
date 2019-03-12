using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO.Ports;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication
{
    
    public partial class ex4Interface : System.Web.UI.Page
    {
        


        SerialPort ArduinoPort1,ArduinoPort2;

      

        protected void Page_Load(object sender, EventArgs asd)
        {
           
            if (Page.IsPostBack)
            {

                 ArduinoPort1 = new SerialPort();
                ArduinoPort2 = new SerialPort();
                if ((Port_TB1.Text.ToLower().Contains("com") && Port_TB2.Text.ToLower().Contains("com") )|| (!Port_TB1.Text.Equals(null) && !Port_TB2.Text.Equals(null)))
                {
                    ArduinoPort1.PortName = Port_TB1.Text;
                    
                    ArduinoPort2.PortName = Port_TB2.Text;
                    update_Lbl.Text = "Connection Established: " + ArduinoPort1.PortName + "," + ArduinoPort1.BaudRate +"\n\r"
                        + "Connection Established: " + ArduinoPort2.PortName + "," + ArduinoPort2.BaudRate;

                }
                else
                {
                    update_Lbl.Text = "Please fill in the textbox above with the proper port name (i.e. COM1)";
                }


            }

        }
        
        protected void backBtn_Clicked(object sender, EventArgs e)
        {
            Response.Redirect("ex4Form.aspx");
        }

        protected void tyrButton_Click(object sender, EventArgs e)
        {
            ArduinoPort1.Open();
            tryLabel.Text = ArduinoPort1.ReadLine();
            ArduinoPort1.Close();

        }
        protected void Port_TB_TextChanged(object sender, EventArgs e)
        {

        }
        protected void Connect_Btn_Click(object sender, EventArgs e)
        {

        }
        protected void Evaluate()
        {

        }
    }
}
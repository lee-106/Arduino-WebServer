using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO.Ports;

namespace WebApplication
{
    public partial class Interface2 : System.Web.UI.Page
    {
        SerialPort duino;
        String pass;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
            {
                this.Form.Target = "_self";
                duino = new SerialPort();
                if (Port_TB.Text.ToLower().Contains("com") && !Port_TB.Text.Equals(null))
                {
                    duino.PortName = Port_TB.Text;
                    update_Lbl.Text = "Connection Established: " + duino.PortName + "," + duino.BaudRate;
                }
                else
                {
                    update_Lbl.Text = "Please fill in the textbox above with the proper port name (i.e. COM1)";
                }
            }
            else
            {
                update_Lbl.Text = "Please fill in the textbox above with the proper port name (i.e. COM1)";
            }
        }

        protected void Connect_Btn_Click(object sender, EventArgs e)
        {

            
        }

        protected void Port_TB_TextChanged(object sender, EventArgs e)
        {
            
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void EnterIntensity_Btn_Click(object sender, EventArgs e)
        {
            duino.Open();
            duino.Write(Intensity_TB.Text);
            duino.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            pass = "Experiment 2: Interfacing Arduino with Web Application";
            Session["test"] = pass;
            Response.Redirect("experiments.aspx");
        }
    }
}
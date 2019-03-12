using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO.Ports;

namespace WebApplication
{
    public partial class Interface4 : System.Web.UI.Page
    {
        SerialPort ArduinoPort1, ArduinoPort2;
        protected void Page_Load(object sender, EventArgs e)
        {
            p1_image.Width = 175;
            p1_image.Height = 175;
            p2_image.Width = 175;
            p2_image.Height = 175;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("experiments.aspx");
        }
    }
}
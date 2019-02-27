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
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["MyWebDBConnectionString"].ConnectionString);
         
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //ADD
            try
            {
                conn.Open();
                
                    SqlCommand cmd = new SqlCommand("INSERT INTO [objTable](objective, number) VALUES (@objective, @index) ", conn);
                    cmd.Parameters.AddWithValue("@objective", objtext.Text);
                    cmd.Parameters.AddWithValue("@index", (expddlist.SelectedIndex+1)+"");
                    cmd.ExecuteNonQuery();
                    SqlCommand cmd1 = new SqlCommand("INSERT INTO [proctable](instructions, in_number, number) VALUES (@instructions, @in_number, @number) ", conn);
                    cmd1.Parameters.AddWithValue("@instructions", proctext.Text);
                    cmd1.Parameters.AddWithValue("@in_number", procntxt.Text);
                cmd1.Parameters.AddWithValue("@number", (expddlist.SelectedIndex + 1) + "");
                cmd1.ExecuteNonQuery();
                    
                
                conn.Close();
                Response.Redirect("AdminPage.aspx");
            }
            catch(SystemException)
            {

            }
            finally
            {
                
                
            }
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
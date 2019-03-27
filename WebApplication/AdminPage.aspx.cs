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
        String pass;
        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["MyWebDBConnectionString"].ConnectionString);
            //initFiles();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //ADD
            try
            {
                conn.Open();
                if(!objtext.Text.Equals(""))
                {
                    SqlCommand cmd = new SqlCommand("INSERT INTO [objTable](objective, number) VALUES (@objective, @index) ", conn);
                    cmd.Parameters.AddWithValue("@objective", objtext.Text);
                    cmd.Parameters.AddWithValue("@index", (expddlist.SelectedIndex + 1) + "");
                    cmd.ExecuteNonQuery();
                }
                if(!proctext.Text.Equals("") && !procntxt.Text.Equals(""))
                {
                    SqlCommand cmd1 = new SqlCommand("INSERT INTO [proctable](instructions, in_number, number) VALUES (@instructions, @in_number, @number) ", conn);
                    cmd1.Parameters.AddWithValue("@instructions", proctext.Text);
                    cmd1.Parameters.AddWithValue("@in_number", procntxt.Text);
                    cmd1.Parameters.AddWithValue("@number", (expddlist.SelectedIndex + 1) + "");
                    cmd1.ExecuteNonQuery();
                }
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

            try
            {
                conn.Open();
                if(!procntxt.Text.Equals("") && !proctext.Text.Equals(""))
                {

                    SqlCommand cmd = new SqlCommand("UPDATE [proctable] SET instructions = @instructions WHERE number = '" + (expddlist.SelectedIndex + 1) + "' AND in_number = '" + procntxt.Text + "';", conn);
                    cmd.Parameters.AddWithValue("@instructions", proctext.Text);
                    cmd.ExecuteNonQuery();
                }
                if (fupl1.HasFile) uploadFile();
                Response.Redirect("AdminPage.aspx");
            }
            catch(SystemException)
            {

            }
            finally
            {
                conn.Close();
            }
        }

        protected void expddlist_SelectedIndexChanged(object sender, EventArgs e)
        {
            ObjGrid.DataBind();
            ProcedureGrid.DataBind();
        }
        protected void ProcedureGrid_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void Button3_Click(object sender, EventArgs e)
        {
           
        }
        protected void Button3_Click1(object sender, EventArgs e)
        {
            pass = "Updated";
            Session["test"] = pass;
            Response.Redirect("WebForm1.aspx");
        }
        protected void uploadFile()
        {
            String strname = fupl1.FileName.ToString();
            fupl1.PostedFile.SaveAs(Server.MapPath("~/" + strname));
            SqlCommand sql = new SqlCommand("UPDATE [proctable] SET procedure_image = @image WHERE number = '" + (expddlist.SelectedIndex + 1) + "' AND in_number = '" + procntxt.Text + "';", conn);
            sql.Parameters.AddWithValue("@image", strname);
            sql.ExecuteNonQuery();
        }
        public void initFiles()
        {
            SqlCommand cmd = new SqlCommand("UPDATE [proctable] SET procedure_image = @exist_image WHERE number = @number AND in_number = @proc_number;", conn);
            cmd.Parameters.AddWithValue("@exist_image", "exp1.PNG");
            cmd.Parameters.AddWithValue("@number", "1");
            cmd.Parameters.AddWithValue("@proc_number", "2");
            cmd.ExecuteNonQuery();
            cmd.Parameters.AddWithValue("@exist_image", "exp2.png");
            cmd.Parameters.AddWithValue("@number", "2");
            cmd.Parameters.AddWithValue("@proc_number", "1");
            cmd.ExecuteNonQuery();
            cmd.Parameters.AddWithValue("@exist_image", "exp3.jpg");
            cmd.Parameters.AddWithValue("@number", "3");
            cmd.Parameters.AddWithValue("@proc_number", "1");
            cmd.ExecuteNonQuery();
            cmd.Parameters.AddWithValue("@exist_image", "exp4.png");
            cmd.Parameters.AddWithValue("@number", "4");
            cmd.Parameters.AddWithValue("@proc_number", "1");
            cmd.ExecuteNonQuery();
        }
    }
}
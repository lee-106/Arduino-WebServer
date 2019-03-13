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
using System.IO;
using System.Text.RegularExpressions;

namespace WebApplication
{
    public partial class experiments : System.Web.UI.Page
    {
        private String fromMain;
        private int int_no;
        private String redirect;

        SqlConnection conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            obj_gv.DataBind();
            proc_gv.DataBind();
            if(!string.IsNullOrEmpty((string)Session["test"]))
            {
                fromMain = (string)Session["test"];   
            }
            else
            {
                fromMain = "NO DATA";
            }
            
            if(fromMain.Equals("Experiment 1: Familiarization with Arduino"))
            {
                int_no = 1;
                Button1.Visible = false;
                redirect = "Interface1.aspx";
            }
            else if(fromMain.Equals("Experiment 2: Interfacing Arduino with Web Application"))
            {
                int_no = 2;
                redirect = "Interface2.aspx";
            }
            else if(fromMain.Equals("Experiment 3: Sending Input from Arduino to Web Application"))
            {
                int_no = 3;
                redirect = "Interface3.aspx";
            }
            else if(fromMain.Equals("Experiment 4: Rock, Paper, Scissors Game"))
            {
                int_no = 4;
                redirect = "ex4Interface.aspx";
            }

            exp_number.Text = fromMain;
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["MyWebDBConnectionString"].ConnectionString);

            setupTables();
        }

        protected void setupTables()
        {
            try
            {
                conn.Open();
                SqlDataAdapter dataAdapter = new SqlDataAdapter("SELECT objective FROM [objTable] WHERE number ='" + int_no + "';", conn);
                SqlDataAdapter dataAdapter2 = new SqlDataAdapter("SELECT amount, material_name FROM [matTable] WHERE exp_number ='" + int_no + "';", conn);
                DataTable dataTable = new DataTable();
                DataTable dataTable2 = new DataTable();
                dataAdapter.Fill(dataTable);
                dataAdapter2.Fill(dataTable2);
                obj_gv.DataSource = dataTable;
                obj_gv.DataBind();
                mat_gv.DataSource = dataTable2;
                mat_gv.DataBind();
                manualBind();
                showPics(); 
            }
            catch(SqlException)
            {

            }
            finally
            {
                conn.Close();
            }
        }
        protected void mat_gv_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.Header)
            {
                e.Row.Cells[0].Text = "Materials:";
                e.Row.Cells[1].Text = "";
                e.Row.Cells[0].Attributes["Width"] = "1px";
            }
        }

        protected void obj_gv_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if(e.Row.RowType == DataControlRowType.Header)
            {
                e.Row.Cells[0].Text = "Objectives:";
            }
        }

        protected void proc_gv_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if(e.Row.RowType == DataControlRowType.Header)
            {
                e.Row.Cells[0].Text = "Procedures: ";
                e.Row.Cells[1].Text = "";
                e.Row.Cells[0].Attributes["Width"] = "1px";
                //e.Row.Cells[1].Attributes["Width"] = "100px";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm1.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect(redirect);
        }

        protected void manualBind()
        {
            SqlCommand command = new SqlCommand("SELECT * FROM [proctable] WHERE number = '" + int_no + "';", conn);
            DataTable dataTable = new DataTable();
            dataTable.Columns.Add("No.");
            dataTable.Columns.Add("Procedures");
            SqlDataReader reader = command.ExecuteReader();
            while(reader.Read())
            {
                String procedure = reader[0].ToString();
                String link = reader[6].ToString();
                String filename = reader[8].ToString();
                String image = reader[4].ToString();
                String HasImage = reader[3].ToString();
                String HasLink = reader[5].ToString();
                String HasCode = reader[7].ToString();
                if(HasCode.Equals("1") && HasImage.Equals("1") && HasLink.Equals("1"))
                {
                    String data = File.ReadAllText(Server.MapPath("~/" + filename));
                    String append = procedure + "\n" + link + "\n" + image + Environment.NewLine + data;
                    var datarow = dataTable.NewRow();
                    datarow["No."] = reader[1].ToString();
                    datarow["Procedures"] = append;
                    dataTable.Rows.Add(datarow);
                }
                else if(HasImage.Equals("1") && HasLink.Equals("1"))
                {
                    String append = procedure + "\n" + link + "\n" + image;
                    var datarow = dataTable.NewRow();
                    datarow["No."] = reader[1].ToString();
                    datarow["Procedures"] = append;
                    dataTable.Rows.Add(datarow);
                }
                else if(HasImage.Equals("1") && HasCode.Equals("1"))
                {
                    String data = File.ReadAllText(Server.MapPath("~/" + filename));
                    String append = procedure + "\n" + image + Environment.NewLine + data;
                    var datarow = dataTable.NewRow();
                    datarow["No."] = reader[1].ToString();
                    datarow["Procedures"] = append;
                    dataTable.Rows.Add(datarow);
                }
                else if(HasLink.Equals("1") && HasCode.Equals("1"))
                {
                    String data = File.ReadAllText(Server.MapPath("~/" + filename));
                    String append = procedure + "\n" + link + Environment.NewLine + data;
                    var datarow = dataTable.NewRow();
                    datarow["No."] = reader[1].ToString();
                    datarow["Procedures"] = append;
                    dataTable.Rows.Add(datarow);
                }
                else if(HasImage.Equals("1"))
                {
                    String append = procedure + "\n" + image;
                    var datarow = dataTable.NewRow();
                    datarow["No."] = reader[1].ToString();
                    datarow["Procedures"] = append;
                    dataTable.Rows.Add(datarow);
                }
                else if (HasLink.Equals("1"))
                {
                    HyperLinkField hyp = new HyperLinkField();
                    hyp.NavigateUrl = link;
                    String append = procedure + "\n" + hyp.NavigateUrl;
                    var datarow = dataTable.NewRow();
                    datarow["No."] = reader[1].ToString();
                    datarow["Procedures"] = append;
                    dataTable.Rows.Add(datarow);
                }
                else if(HasCode.Equals("1"))
                {
                    String data = File.ReadAllText(Server.MapPath("~/" + filename));
                    String append = procedure + Environment.NewLine + data;
                    var datarow = dataTable.NewRow();
                    datarow["No."] = reader[1].ToString();
                    datarow["Procedures"] = append;
                    dataTable.Rows.Add(datarow);
                }
                else
                {
                    var datarow = dataTable.NewRow();
                    datarow["No."] = reader[1].ToString();
                    datarow["Procedures"] = reader[0].ToString();
                    dataTable.Rows.Add(datarow);
                }
            }
            proc_gv.DataSource = dataTable;
            proc_gv.DataBind();
        }

        protected void showPics()
        {
            if(int_no == 1)
            {
                exp1_image.Visible = true;
                exp1_image.Width = 380;
                exp1_image.Height = 480;
            }
            else if(int_no == 2)
            {
                exp2_image.Visible = true;
                exp2_image.Width = 400;
                exp2_image.Height = 420;
            }
            else if(int_no == 3)
            {
                exp3_image.Visible = true;
                exp3_image.Width = 600;
                exp3_image.Height = 300;
            }
            else if(int_no == 4)
            {
                exp4_image.Visible = true;
                exp4_image.Width = 550;
                exp4_image.Height = 560;
            }
        }
    }
}
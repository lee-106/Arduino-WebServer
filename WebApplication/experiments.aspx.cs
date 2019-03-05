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
                redirect = "ex1Interface.aspx";
            }
            else if(fromMain.Equals("Experiment 2: Interfacing Arduino with Web Application"))
            {
                int_no = 2;
                redirect = "ex2Interface.aspx";
            }
            else if(fromMain.Equals("Experiment 3: Sending Input from Arduino to Web Application"))
            {
                int_no = 3;
                redirect = "ex3Interface.aspx";
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
                DataTable dataTable = new DataTable();
                dataAdapter.Fill(dataTable);
                obj_gv.DataSource = dataTable;
                obj_gv.DataBind();
                SqlDataAdapter dataAdapter2 = new SqlDataAdapter("SELECT in_number, instructions FROM [proctable] WHERE number = '" + int_no + "';", conn);
                DataTable dataTable2 = new DataTable();
                dataAdapter2.Fill(dataTable2);
                proc_gv.DataSource = dataTable2;
                proc_gv.DataBind();
                dataTable.Clear();
                dataTable2.Clear();
            }
            catch(SqlException)
            {

            }
            finally
            {
                conn.Close();
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
    }
}
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;

namespace WebApplication
{
    public class DTBdata
    {
        public String returnDB()
        {
            return "MyWebDB";
        }
        public String returnServer()
        {
            return "LYLE-PC";
        }

        public void UpdateTable()
        {
                String server = this.returnServer();
                String database = this.returnDB();

                using (SqlConnection conn = new SqlConnection())
                {
                    conn.ConnectionString = "Server=" + server + ";Database=" + database + ";Trusted_Connection=true";
                
                    string script = File.ReadAllText(Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "update.txt"));
                    IEnumerable<string> commandStrings = Regex.Split(script, @"^\s*GO\s*$", RegexOptions.Multiline | RegexOptions.IgnoreCase);
                try
                {
                    conn.Open();
                    foreach (string commandString in commandStrings)
                    {
                        if (commandString.Trim() != "")
                        {
                            using (var command = new SqlCommand(commandString, conn))
                            {
                                command.ExecuteNonQuery();
                            }
                        }
                    }
                }
                finally
                {
                    conn.Close();
                }
            }
            
        }
    }
}
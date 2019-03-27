using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Threading.Tasks;
using System.Drawing;
using System.Windows.Forms;
namespace WebApplication
{
    public class DTBImages
    {
        public String returnDB()
        {
            return "MyWebDB";
        }
        public String returnServer()
        {
            return "DESKTOP-HKA00AU";
        }

        public void insertImages()
        {
            String server = this.returnServer();
            String db = this.returnDB();
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = "Server=" + server + ";Database=" + db + ";Trusted_Connection=true";
            try
            {
                conn.Open();
                //DIalogFile();
                //var exp2_image = new Bitmap("C:\\Users\\Elijah\\source\\repos\\ini106\\Arduino-WebServer\\WebApplication\\exp2.png");
                //MemoryStream ms2 = new MemoryStream();
                //exp2_image.Save(ms2, System.Drawing.Imaging.ImageFormat.Png);
                //byte[] byteImage2 = ms2.ToArray();
                //String image2 = Convert.ToBase64String(byteImage2);
                //String image2 = "LONG_FILE('C:/Users/Elijah/source/repos/ini106/Arduino-WebServer/WebApplication/exp2.png')";
                //SqlCommand command = new SqlCommand("UPDATE [proctable] SET procedure_image = @procedure_image WHERE number = '2' AND in_number = '1';", conn);
                //command.Parameters.AddWithValue("@procedure_image", image2);
                //command.ExecuteNonQuery();
            }
            catch(SystemException)
            {

            }
            finally
            {
                conn.Close();
            }
        }

        protected void DialogFile()
        {
            //using (OpenFileDialog openFileDialog = new OpenFileDialog())
        }
    }
}
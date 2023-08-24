using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Data.SqlClient;

namespace Amsement_park1.Admin
{
    public partial class Forgot_Password : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\AdminDatabase.mdf;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        string qry;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_sub_Click(object sender, EventArgs e)
        {


            cn.Open();
            qry = "select * from adminreg where Email = '" + txtrecovery.Text + "'";
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();



                MailMessage mail = new MailMessage();
                string mailid = txtrecovery.Text;
                mail.To.Add(mailid);
                mail.From = new MailAddress("SummerVilleproject22@gmail.com");
                mail.Subject = "Forgot Password";
                string body = "your Password is :" + dr["Password"].ToString();
                mail.Body = body;
                mail.IsBodyHtml = true;

                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.Credentials = new System.Net.NetworkCredential("SummerVilleproject22@gmail.com", "summervilleadmin");
                smtp.Port = 587;
                smtp.EnableSsl = true;
                smtp.Send(mail);
                Response.Redirect("Adminlogin.aspx");
            }
           
            cn.Close();
        }
    }
}
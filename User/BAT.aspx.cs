using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Xml.Linq;
using System.Threading;
using System.Net.Mail;
using System.Security.Cryptography;
using System.Text;
using System.Web.Configuration;


namespace Amsement_park1.User
{
    public partial class WebForm14 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\AdminDatabase.mdf;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        string qry;
        int aid;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Uid"] == null)
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "alert", "alert('please login');window.location='Login.aspx';", true);

            }
            else
            {

                txtname.Text = Session["name"].ToString();
                txtemail.Text = Session["Email"].ToString();
                txtuid.Text = Session["Uid"].ToString();
               


                //ClientScript.RegisterStartupScript(Page.GetType(), "alert", "alert('please login');window.location='Login.aspx';", true);
                String s = DateTime.Today.ToString();
                txtdate.Text = s.Substring(0, 10);

                //ViewState["uid"] = Convert.ToInt32(Request.QueryString.Get("uid"));
                //aid = Convert.ToInt32(ViewState["uid"].ToString());
                //cn.Open();
                //qry = "select * from userreg where uid= " + aid;
                //cmd = new SqlCommand(qry, cn);
                //dr = cmd.ExecuteReader();
                //if (dr.HasRows)
                //{
                //    dr.Read();
                //    txtname.Text = dr["uname"].ToString();
                //    txtemail.Text = dr["email"].ToString();
                //    txtmobno.Text = dr["mobile"].ToString();
                //}
            }
        }

        protected void btnsub_Click(object sender, EventArgs e)
        {

            DateTime d1 = DateTime.Today;
            Label1.Text = txtbookdate.Text;

            DateTime d2 = DateTime.ParseExact(txtbookdate.Text, "dd-MM-yyyy", System.Globalization.CultureInfo.InvariantCulture);

            if (d2 < d1)
            {
                Label1.Text = "Not Valid Date....";
            }
            else
            {
                Label1.Text = "Completed";

                cn.Open();
                qry = "select max(bookid) from tablebook";
                cmd = new SqlCommand(qry, cn);
                int i = Convert.ToInt32(cmd.ExecuteScalar());
                cn.Close();
                
                
                MailMessage mail = new MailMessage();
                string mailid = txtemail.Text;
                mail.To.Add(mailid);
                mail.From = new MailAddress("summervilleproject22@gmail.com");
                mail.Subject = "Registration";
                string Body = "Your Table Booking  successfully.... Your Table Booking Id: " + i.ToString();
                mail.Body = Body;
                mail.IsBodyHtml = true;
                SmtpClient smtp = new SmtpClient();

                //  smtp.Host = ConfigurationManager.AppSettings["SMTP"];
                //  smtp.Credentials = new System.Net.NetworkCredential(ConfigurationManager.AppSettings["FROMMAIL"], ConfigurationManager.AppSettings["FROMPWD"]);


                smtp.Host = "smtp.gmail.com";
                smtp.Credentials = new System.Net.NetworkCredential("summervilleproject22@gmail.com", "summervilleadmin");
                smtp.Port = 587;  //465
                smtp.EnableSsl = true;
                smtp.Send(mail);

                //Label1.Text  = "email-id and check it..";
            }
            cn.Open();
            qry = "insert into tablebook values('" + txtuid.Text + "','" + txtname.Text  + "','" + txtemail.Text + "','" + txtmobno.Text +"','" + txtper.Text +"','" + txtdate.Text +"','" + txtbookdate.Text +"')";
            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            cn.Close();
        }

        protected void txtdate_TextChanged(object sender, EventArgs e)
        {
            DateTime date = DateTime.Today.Date;
            String today = date.ToString("dd-MM-yyyy");
            txtbookdate.Attributes["min"] = today;

        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net;
using System.Net.Mail;

namespace Amsement_park1.User
{
    
    public partial class WebForm2 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\AdminDatabase.mdf;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();
        string qry;
        string fname;
        SqlDataReader dr;
        string s;
        int d1, d2, d3, p1, p2, p3, t1, t2, t3, total;
        public string orderId;

          ticketbook x = new ticketbook();

        payment p = new payment();
        public int tp;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Uid"] == null)
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "alert", "alert('please login');window.location='Login.aspx';", true);

            }
            else
            {
                tp = Convert.ToInt32(Request.QueryString["tpid"].ToString());
                s = "select * from ticket where tpid =" + tp;
                dr = x.search(s);
                if (dr.HasRows)
                {
                    dr.Read();
                    lbladprice.Text = dr["tadult"].ToString();
                    lblchldprice.Text = dr["tchild"].ToString();
                    lblsrprice.Text = dr["tsrcitizen"].ToString();
                    txtdes.Text = dr["tpid"].ToString();
                    txtname.Text = Session["name"].ToString();
                    txtemail.Text = Session["Email"].ToString();
                    
                }
            }
  


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DateTime d1 = DateTime.Today;
            Label1.Text = txtdate.Text;

            DateTime d2 = DateTime.ParseExact(txtdate.Text,"dd-MM-yyyy", System.Globalization.CultureInfo.InvariantCulture);

            if (d2 < d1)
            {
                Label1.Text = "Not Valid Date....";
            }
            else
            {
                Label1.Text = "Completed";

                cn.Open();
                qry = "select max(tbid) from ticketbooking";
                cmd = new SqlCommand(qry, cn);
                int i = Convert.ToInt32(cmd.ExecuteScalar());
                cn.Close();

                MailMessage mail = new MailMessage();
                string mailid = txtemail.Text;
                mail.To.Add(mailid);
                mail.From = new MailAddress("summervilleproject22@gmail.com");
                mail.Subject = "Registration";
                string Body = "Your Ticket Booking  successfully.... Your Ticket Booking Id: " + i.ToString(); ;
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

                cn.Open();
                qry = "insert into ticketbooking values('" + txtdes.Text + "','" + txtname.Text + "','" + txtemail.Text + "','" + txtmob.Text + "','" + txtdate.Text + "','" + DropDownList2.Text + "','" + DropDownList3.Text + "','" + DropDownList4.Text + "','" + lbltotamt.Text + "')";
                cmd = new SqlCommand(qry, cn);
                cmd.ExecuteNonQuery();
                cn.Close();
                Response.Redirect("Payment.aspx");
            }
        
        }
        protected void txtdate_TextChanged(object sender, EventArgs e)
        {
            DateTime date = DateTime.Today.Date;
            String today = date.ToString("dd-MM-yyyy");
            txtdate.Attributes["min"] = today;

        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            d1 = Convert.ToInt32(DropDownList2.SelectedItem.Value);
            d2 = Convert.ToInt32(DropDownList3.SelectedItem.Value);
            d3 = Convert.ToInt32(DropDownList4.SelectedItem.Value);
            p1 = Convert.ToInt32(lbladprice.Text);
            p2 = Convert.ToInt32(lblchldprice.Text);
            p3 = Convert.ToInt32(lblsrprice.Text);
            t1 = d1 * p1;
            t2 = d2 * p2;
            t3 = d3 * p3;
            lbladtot.Text = t1.ToString();
            lblchtot.Text = t2.ToString();
            lblsrtot.Text = t3.ToString();
            total = t1 + t2 + t3;
            lbltotamt.Text = total.ToString();
        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            d1 = Convert.ToInt32(DropDownList2.SelectedItem.Value);
            d2 = Convert.ToInt32(DropDownList3.SelectedItem.Value);
            d3 = Convert.ToInt32(DropDownList4.SelectedItem.Value);
            p1 = Convert.ToInt32(lbladprice.Text);
            p2 = Convert.ToInt32(lblchldprice.Text);
            p3 = Convert.ToInt32(lblsrprice.Text);
            t1 = d1 * p1;
            t2 = d2 * p2;
            t3 = d3 * p3;
            lbladtot.Text = t1.ToString();
            lblchtot.Text = t2.ToString();
            lblsrtot.Text = t3.ToString();
            total = t1 + t2 + t3;
            lbltotamt.Text = total.ToString();
        }

        protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
        {
            d1 = Convert.ToInt32(DropDownList2.SelectedItem.Value);
            d2 = Convert.ToInt32(DropDownList3.SelectedItem.Value);
            d3 = Convert.ToInt32(DropDownList4.SelectedItem.Value);
            p1 = Convert.ToInt32(lbladprice.Text);
            p2 = Convert.ToInt32(lblchldprice.Text);
            p3 = Convert.ToInt32(lblsrprice.Text);
            t1 = d1 * p1;
            t2 = d2 * p2;
            t3 = d3 * p3;
            lbladtot.Text = t1.ToString();
            lblchtot.Text = t2.ToString();
            lblsrtot.Text = t3.ToString();
            total = t1 + t2 + t3;
            lbltotamt.Text = total.ToString();
        }
    }
}
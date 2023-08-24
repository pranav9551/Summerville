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



namespace summervilleuser1.asset
{

    public partial class WebForm2 : System.Web.UI.Page  
    {
        regis x = new regis();

        string qry;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_register_Click(object sender, EventArgs e)
        {
            MailMessage mail = new MailMessage();
            string mailid = txtemail.Text;
            mail.To.Add(mailid);
            mail.From = new MailAddress("summervilleproject22@gmail.com");
            mail.Subject = "Registration";
            string Body = "Welcome to Summerville by Jainish patel you are registrated successfully....";
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

            qry = "insert into userreg values('" + txtname.Text + "','" + txtmob.Text + "','" + txtemail.Text + "','" + txtpass.Text + "','" + txtrepass.Text + "','" + ddlgender.Text + "','" + txtage.Text + "','" + txtaddress.Text + "','" + ddlcountry.Text + "','" + ddlstate.Text + "','" + ddlcity.Text + "')";
            x.regisins(qry);
            Response.Redirect("Login.aspx");
        }
    }

    internal class regis
    {
        Connection x = new Connection();
        public regis()
        {
            //
            // TODO: Add constructor logic here
            //
        }
        public void regisins(string qry)
        {
            x.conopen();
            x.cmd = new SqlCommand(qry, x.cn);
            x.cmd.ExecuteNonQuery();
            x.conclose();

        }
    }
}

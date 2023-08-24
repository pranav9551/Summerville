using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Data;
using System.IO;


namespace Amsement_park1.Admin
{
    public partial class WebForm9 : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\AdminDatabase.mdf;Integrated Security=True;User Instance=True");
        string qry;
        SqlDataReader dr;

        protected void Page_Load(object sender, EventArgs e)
        {
            cn.Open();
            qry = "Select count(uid) As Countuser from userreg";
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                Lable1.Text = dr["Countuser"].ToString();
            }
            cn.Close();
          
        }
        protected void Button_Click(object sender, EventArgs e)
        {
           // Label1.Text = "You clicked the " + ((Control)sender).ID + " at " + DateTime.Now.ToLongTimeString() + ".";
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Amsement_park1.Admin
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\AdminDatabase.mdf;Integrated Security=True");
        string qry;
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            cn.Open();
            qry = "select count(*) from show";
            cmd = new SqlCommand(qry, cn);
            int i = Convert.ToInt32(cmd.ExecuteScalar());
            Label1.Text = i.ToString();
            cn.Close();

            cn.Open();
            qry = "select count(*) from event";
            cmd = new SqlCommand(qry, cn);
            int b = Convert.ToInt32(cmd.ExecuteScalar());
            Label2.Text = b.ToString();
            cn.Close();

            cn.Open();
            qry = "select count(*) from userreg";
            cmd = new SqlCommand(qry, cn);
            int u = Convert.ToInt32(cmd.ExecuteScalar());
            Label3.Text = u.ToString();
            cn.Close();

            cn.Open();
            qry = "select count(*) from tablebook";
            cmd = new SqlCommand(qry, cn);
            int t = Convert.ToInt32(cmd.ExecuteScalar());
            Label4.Text = t.ToString();
            cn.Close();

            cn.Open();
            qry = "select count(*) from ticketbooking";
            cmd = new SqlCommand(qry, cn);
            int p = Convert.ToInt32(cmd.ExecuteScalar());
            Label5.Text = p.ToString();
            cn.Close();
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Amsement_park1.Admin
{
    public partial class WebForm48 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\AdminDatabase.mdf;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();
        string qry;
        SqlDataReader dr;
        int aid;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            { 
            ViewState["tid"] = Convert.ToInt32(Request.QueryString.Get("tid"));
            aid = Convert.ToInt32(ViewState["tid"].ToString());
            cn.Open();
            qry = "select * from Ticket where tid= " + aid;
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
            
                txtatp.Text = dr["tadult"].ToString();
                txtctp.Text = dr["tchild"].ToString();
                txtsctp.Text = dr["tsrcitizen"].ToString();
                txtdescription.Text = dr["descriptions"].ToString();
            }
            cn.Close();
            }
        }

        protected void btnsub_Click(object sender, EventArgs e)
        {
            aid = Convert.ToInt32(ViewState["tid"].ToString());
            cn.Open();
            qry = "update Ticket set tadult='" + txtatp.Text + "',tchild='" + txtctp.Text + "',tsrcitizen='" + txtsctp.Text + "',descriptions='" + txtdescription.Text +"' where tid=" + aid;
            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            cn.Close();
            Response.Redirect("Ticket.aspx");
        }
    }
}
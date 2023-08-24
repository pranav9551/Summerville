using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Amsement_park1.Admin
{
    public partial class WebForm39 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\AdminDatabase.mdf;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();
        string qry;
        SqlDataReader dr;
        int aid;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            { 
            ViewState["tpid"] = Convert.ToInt32(Request.QueryString.Get("tpid"));
            aid = Convert.ToInt32(ViewState["tpid"].ToString());
            cn.Open();
            qry = "select * from TicketPackage where tpid= " + aid;
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                txtticp.Text = dr["tpname"].ToString();
            }
            cn.Close();
            }
        }

        protected void btnsub_Click(object sender, EventArgs e)
        {
            aid = Convert.ToInt32(ViewState["tpid"].ToString());
            cn.Open();
            qry = "update TicketPackage set tpname='" + txtticp.Text + "' where tpid=" + aid;
            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            cn.Close();
            Response.Redirect("TicketPackage.aspx");
        }
    }
}
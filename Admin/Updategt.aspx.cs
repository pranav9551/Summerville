using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Amsement_park1.Admin
{
    public partial class WebForm42 : System.Web.UI.Page
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
            ViewState["gtid"] = Convert.ToInt32(Request.QueryString.Get("gtid"));
            aid = Convert.ToInt32(ViewState["gtid"].ToString());
            cn.Open();
            qry = "select * from Gallerytype where gtid= " + aid;
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                txtgtname.Text = dr["gtname"].ToString();
            }
            cn.Close();
            }
        }

        protected void btnsub_Click(object sender, EventArgs e)
        {
            aid = Convert.ToInt32(ViewState["gtid"].ToString());
            cn.Open();
            qry = "update Gallerytype set gtname='" + txtgtname.Text + "' where gtid=" + aid;
            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            cn.Close();
            Response.Redirect("Gallerytype.aspx");
        }
    }
}
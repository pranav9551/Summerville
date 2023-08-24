using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Amsement_park1.Admin
{
    public partial class WebForm10 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\AdminDatabase.mdf;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();
        string qry;
        SqlDataReader dr;
        int uid;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (! IsPostBack)
            { 
            ViewState["cid"] = Convert.ToInt32(Request.QueryString.Get("cid"));
            uid = Convert.ToInt32(ViewState["cid"].ToString());
            cn.Open();
            qry = "select * from country where cid= " + uid;
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                txtcountry.Text = dr["cname"].ToString();
            }
            cn.Close();
            }
        }

        protected void btnsub_Click(object sender, EventArgs e)
        {
            uid = Convert.ToInt32(ViewState["cid"].ToString());
            cn.Open();
            qry = "update country set cname='" + txtcountry.Text + "' where cid=" + uid;
            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            cn.Close();
            Response.Redirect("Country.aspx");
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Amsement_park1.Admin
{
    public partial class WebForm12 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\AdminDatabase.mdf;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();
        string qry;
        SqlDataReader dr;
        int cid;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            { 
            ViewState["cityid"] = Convert.ToInt32(Request.QueryString.Get("cityid"));
            cid = Convert.ToInt32(ViewState["cityid"].ToString());
            cn.Open();
            qry = "select * from city where cityid= " + cid;
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                txtcity.Text = dr["cityname"].ToString();
            }
            cn.Close();
            }
        }

        protected void btnsub_Click(object sender, EventArgs e)
        {
            cid = Convert.ToInt32(ViewState["cityid"].ToString());
            cn.Open();
            qry = "update city set cityname='" + txtcity.Text + "' where cityid=" + cid;
            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            cn.Close();
            Response.Redirect("City.aspx");
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Amsement_park1.Admin
{
    public partial class WebForm60 : System.Web.UI.Page
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
                ViewState["pcid"] = Convert.ToInt32(Request.QueryString.Get("pcid"));
                aid = Convert.ToInt32(ViewState["pcid"].ToString());
                cn.Open();
                qry = "select * from ProductCategory where pcid= " + aid;
                cmd = new SqlCommand(qry, cn);
                dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    dr.Read();
                    txtpcname.Text = dr["pcname"].ToString();
                }
                cn.Close();
            }
        }

        protected void btnsub_Click(object sender, EventArgs e)
        {
            aid = Convert.ToInt32(ViewState["pcid"].ToString());
            cn.Open();
            qry = "update ProductCategory set pcname='" + txtpcname.Text + "' where pcid=" + aid;
            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            cn.Close();
            Response.Redirect("Productcategory.aspx");
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Amsement_park1.Admin
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\AdminDatabase.mdf;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();
        string qry;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Cid"] == null)
            {
                //ClientScript.RegisterStartupScript(Page.GetType(), "alert", "alert('Are You Sure Delete');window.location='../DeleteCountry.aspx';", true);
            }
        }
        protected void btn_sub_Click(object sender, EventArgs e)
        {
            cn.Open();
            qry = "select * from Country where CName= '" + txtcountry.Text + "'";
            cmd = new SqlCommand(qry, cn);
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                Label1.Text = "Record alredy exist.... ";
            }
            else
            {
                cn.Close();
                cn.Open();
                qry = "insert into Country values('" + txtcountry.Text + "')";
                cmd = new SqlCommand(qry, cn);
                cmd.ExecuteNonQuery();
                cn.Close();
                Response.Redirect("Country.aspx");
            }
            cn.Close();
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Amsement_park1.Admin
{
    public partial class Adminlockscreen : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\AdminDatabase.mdf;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        string qry;
        protected void Page_Load(object sender, EventArgs e)
        {
            Imgapic.ImageUrl = "../Adminpic/" + Session["pic"].ToString();
            lblaname.Text = Session["uname"].ToString();
        }

        protected void btn_sub_Click(object sender, EventArgs e)
        {
            cn.Open();
            qry = "select * from adminreg where Password='" + txtpass.Text + "'";
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                Response.Redirect("AdminHome.aspx");
            }
            else
            {
                Label1.Text = "Data Not Found...";
            }
            cn.Close();
        }
    }
}
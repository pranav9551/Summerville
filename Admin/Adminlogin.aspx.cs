using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Amsement_park1.Admin
{
    public partial class Adminlogin : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\AdminDatabase.mdf;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        string qry;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_sub_Click(object sender, EventArgs e)
        {
            cn.Open();
            qry = "select * from adminreg where Email = '" + txtemail.Text + "' and Password='" + txtpass.Text + "'";
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                Session["uname"] = dr["Aname"].ToString();
                Session["email"] = dr["Email"].ToString();
                Session["pic"] = dr["pic"].ToString();
                
                    Response.Redirect("AdminHome.aspx");
                
            }
            else
            {
                Response.Write("<script language=javascript>alert('Incorrect Adminemail & Password')</script>");
            }
            cn.Close();
        }
    }
}
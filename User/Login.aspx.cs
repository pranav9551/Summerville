using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace summervilleuser1.asset
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\AdminDatabase.mdf;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        string qry;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_log_Click(object sender, EventArgs e)
        {
            cn.Open();
            qry = "select * from userreg where email = '" + txtemail.Text + "' and password='" + txtpass.Text + "'";
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                Session["name"] = dr["uname"].ToString();
                Session["Email"] = dr["email"].ToString();
               
                
                Session["Uid"] = Convert.ToInt32(dr["uid"].ToString());
                


                Response.Redirect("Home.aspx");
            }
            else
            {
                Response.Write("<script language=javascript>alert('Incorrect UserEmail & Password')</script>");
                //Label1.Text = "Data Not Found...";
            }
            cn.Close();
        }
    }
}
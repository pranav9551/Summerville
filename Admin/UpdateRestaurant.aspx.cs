using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Amsement_park1.Admin
{
    public partial class WebForm46 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\AdminDatabase.mdf;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();
        string qry;
        string fname;
        SqlDataReader dr;
        int aid;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            { 
            ViewState["rid"] = Convert.ToInt32(Request.QueryString.Get("rid"));
            aid = Convert.ToInt32(ViewState["rid"].ToString());
            cn.Open();
            qry = "select * from Restaurant where rid= " + aid;
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                ddlpark.Text = dr["parkname"].ToString();
             
                txttime.Text = dr["rtime"].ToString();
                txtfname.Text = dr["rfname"].ToString();
                Txtftype.Text = dr["rftype"].ToString();
                txtspecial.Text = dr["rspecial"].ToString();
                txtdis.Text = dr["descriptions"].ToString();
                Image1.ImageUrl = "../Restaurantpic/" + dr["rpic"].ToString();
            }
            cn.Close();
            }
        }

        protected void btnsub_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                if (FileUpload1.PostedFile.ContentType == "image/jpeg")
                {
                    fname = (FileUpload1.FileName);
                    FileUpload1.SaveAs(Server.MapPath("~/Restaurantpic/" + fname));
                    aid = Convert.ToInt32(ViewState["rid"].ToString());
                    cn.Open();
                    qry = "update Restaurant set parkname='" + ddlpark.Text + "',rtime='" + txttime.Text +"',rfname='" + txtfname.Text + "',rftype='" + Txtftype.Text +"',rspecial='" + txtspecial.Text + "', rpic='" + FileUpload1.FileName + "', descriptions='" + txtdis.Text + "' where rid=" + aid;
                    cmd = new SqlCommand(qry, cn);
                    cmd.ExecuteNonQuery();
                    cn.Close();
                    Response.Redirect("Restaurant.aspx");
                }
            }
        }
    }
}
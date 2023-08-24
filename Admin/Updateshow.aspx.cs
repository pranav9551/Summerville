using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Amsement_park1.Admin
{
    public partial class WebForm26 : System.Web.UI.Page
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
            ViewState["showid"] = Convert.ToInt32(Request.QueryString.Get("showid"));
            aid = Convert.ToInt32(ViewState["showid"].ToString());
            cn.Open();
            qry = "select * from show where showid= " + aid;
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                txtday.Text = dr["day"].ToString();
                txttime.Text = dr["time"].ToString();
                txtdis.Text = dr["discription"].ToString();
                Image1.ImageUrl = "../showpic/" + dr["image"].ToString();
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
                    FileUpload1.SaveAs(Server.MapPath("~/showpic/" + fname));
                    aid = Convert.ToInt32(ViewState["showid"].ToString());
                    cn.Open();
                    qry = "update show set  day='" + txtday.Text + "', time='" + txttime.Text + "',image='" + FileUpload1.FileName + "', discription='" + txtdis.Text + "' where showid=" + aid;
                    cmd = new SqlCommand(qry, cn);
                    cmd.ExecuteNonQuery();
                    cn.Close();
                    Response.Redirect("show.aspx");
                }
            }
        }
    }
}
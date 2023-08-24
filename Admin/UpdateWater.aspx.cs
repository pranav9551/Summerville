using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Amsement_park1.Admin
{
    public partial class WebForm20 : System.Web.UI.Page
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
            ViewState["waterrideid"] = Convert.ToInt32(Request.QueryString.Get("waterrideid"));
            aid = Convert.ToInt32(ViewState["waterrideid"].ToString());
            cn.Open();
            qry = "select * from Waterpark where waterrideid= " + aid;
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                txtWater.Text = dr["ridename"].ToString();
                txtdis.Text = dr["ridediscription"].ToString();
                Image1.ImageUrl = "../Waterparkridepic/" + dr["rideimg"].ToString();
                    DropDownList3.Text = dr["status"].ToString();
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
                    FileUpload1.SaveAs(Server.MapPath("~/Waterparkridepic/" + fname));
                    aid = Convert.ToInt32(ViewState["waterrideid"].ToString());
                    cn.Open();
                    qry = "update Waterpark set ridename='" + txtWater.Text + "', rideimg='" + FileUpload1.FileName + "', ridediscription='" + txtdis.Text + "', status='" + DropDownList3.Text + "' where waterrideid=" + aid;
                    cmd = new SqlCommand(qry, cn);
                    cmd.ExecuteNonQuery();
                    cn.Close();
                    Response.Redirect("Waterpark.aspx");
                }
            }
        }
    }
}
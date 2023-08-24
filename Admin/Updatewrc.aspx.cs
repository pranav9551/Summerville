using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Amsement_park1.Admin
{
    public partial class WebForm35 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\AdminDatabase.mdf;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();
        string qry;
        string fname;
        SqlDataReader dr;
        int aid;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ViewState["wrcid"] = Convert.ToInt32(Request.QueryString.Get("wrcid"));
                aid = Convert.ToInt32(ViewState["wrcid"].ToString());
                cn.Open();
                qry = "select * from waterridecategory where wrcid= " + aid;
                cmd = new SqlCommand(qry, cn);
                dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    dr.Read();
                    txtname.Text = dr["wrcname"].ToString();
                    Image1.ImageUrl = "../wrcpic/" + dr["pic"].ToString();
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
                    FileUpload1.SaveAs(Server.MapPath("~/wrcpic/" + fname));
                    aid = Convert.ToInt32(ViewState["wrcid"].ToString());
                    cn.Open();
                    qry = "update waterridecategory set wrcname='" + txtname.Text + "' , pic='" + FileUpload1.FileName + "'  where wrcid=" + aid;
                    cmd = new SqlCommand(qry, cn);
                    cmd.ExecuteNonQuery();
                    cn.Close();
                    Response.Redirect("waterridecategory.aspx");
                }
            }
        }
    }
}
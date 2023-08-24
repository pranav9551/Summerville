using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Amsement_park1.Admin
{
    public partial class WebForm58 : System.Web.UI.Page
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
                ViewState["pid"] = Convert.ToInt32(Request.QueryString.Get("pid"));
                aid = Convert.ToInt32(ViewState["pid"].ToString());
                cn.Open();
                qry = "select * from Product where pid= " + aid;
                cmd = new SqlCommand(qry, cn);
                dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    dr.Read();
                    txtpname.Text = dr["pname"].ToString();
                    txtprice.Text = dr["price"].ToString();
                    txtdis.Text = dr["description"].ToString();
                    Image1.ImageUrl = "../Productpic/" + dr["pic"].ToString();
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
                    FileUpload1.SaveAs(Server.MapPath("~/Productpic/" + fname));
                    aid = Convert.ToInt32(ViewState["pid"].ToString());
                    cn.Open();
                    qry = "update Product set pname='" + txtpname.Text + "', price='" + txtprice.Text + "', pic='" + FileUpload1.FileName + "', description='" + txtdis.Text + "' where pid=" + aid;
                    cmd = new SqlCommand(qry, cn);
                    cmd.ExecuteNonQuery();
                    cn.Close();
                    Response.Redirect("Products.aspx");
                }
            }
        }
    }
}
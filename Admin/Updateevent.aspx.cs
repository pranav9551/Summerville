using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Amsement_park1.Admin
{
    public partial class WebForm28 : System.Web.UI.Page
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
            ViewState["eid"] = Convert.ToInt32(Request.QueryString.Get("eid"));
            aid = Convert.ToInt32(ViewState["eid"].ToString());
            cn.Open();
            qry = "select * from event where eid= " + aid;
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                txtevent.Text = dr["ename"].ToString();
                TextBox1.Text = dr["edate"].ToString();
                txtdis.Text = dr["description"].ToString();
                Image1.ImageUrl = "../eventpic/" + dr["epic"].ToString();
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
                        FileUpload1.SaveAs(Server.MapPath("~/eventpic/" + fname));
                        aid = Convert.ToInt32(ViewState["eid"].ToString());
                        cn.Open();
                        qry = "update event set ename='" + txtevent.Text + "',edate='" + TextBox1.Text + "' ,epic='" + FileUpload1.FileName + "', description='" + txtdis.Text + "' where eid=" + aid;
                        cmd = new SqlCommand(qry, cn);
                        cmd.ExecuteNonQuery();
                        cn.Close();
                        Response.Redirect("Event.aspx");
                    
                }
            }
        }
    }
}
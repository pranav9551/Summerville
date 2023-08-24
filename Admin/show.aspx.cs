using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Amsement_park1.Admin
{
    public partial class WebForm25 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\AdminDatabase.mdf;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();
        string qry;
        string fname;
       
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btn_show_Click(object sender, EventArgs e)
        {
           
            if (FileUpload1.HasFile)
            {
                if (FileUpload1.PostedFile.ContentType == "image/jpeg")
                {
                    fname = (FileUpload1.FileName);
                    FileUpload1.SaveAs(Server.MapPath("~/showpic/" + fname));
                    cn.Open();
                    qry = "insert into show values('" + ddlshowcategory.Text + "','" + txtday.Text + "','" + ddltime.Text + "','" + FileUpload1.FileName + "','" + txtdescription.Text + "')";
                    
                    cmd = new SqlCommand(qry, cn);
                    cmd.ExecuteNonQuery();
                    cn.Close();
                    Response.Redirect("show.aspx");
                }
                else
                {
                    Label1.Text = "please select image file...";
                }
            }
            
            
        }

        
    }
}
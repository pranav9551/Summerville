using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Amsement_park1.Admin
{
    public partial class WebForm24 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\AdminDatabase.mdf;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();
        string qry;
        string fname;
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Btn_event_Click(object sender, EventArgs e)
        {
            Label1.Text = "";
                if (FileUpload1.HasFile)
                {
                    if (FileUpload1.PostedFile.ContentType == "image/jpeg")
                    {

                        DateTime d1 = DateTime.Today;
                        Label1.Text = TextBox1.Text;

                        DateTime d2 = DateTime.ParseExact(TextBox1.Text, "dd-MM-yyyy",
                                                       System.Globalization.CultureInfo.InvariantCulture);

                    if (d2 < d1)
                        Label1.Text = "Not Valid Date....";
                    else

                    {


                        fname = (FileUpload1.FileName);
                        FileUpload1.SaveAs(Server.MapPath("~/eventpic/" + fname));
                        cn.Open();
                        qry = "insert into event values('" + txtename.Text + "','" + TextBox1.Text + "','" + FileUpload1.FileName + "','" + txtdescription.Text + "')";

                        cmd = new SqlCommand(qry, cn);
                        cmd.ExecuteNonQuery();
                        cn.Close();
                        Response.Redirect("Event.aspx");
                    }
                }
                    else
                    {
                        Label1.Text = "please select image file...";
                    }
                }

        

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            DateTime date = DateTime.Today.Date;
            String today = date.ToString("dd-MM-yyyy");
            TextBox1.Attributes["min"] = today;

        }
    }
}
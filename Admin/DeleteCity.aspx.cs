using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Amsement_park1.Admin
{
    public partial class Delete : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\AdminDatabase.mdf;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();
        string qry;
        int cid;
        protected void Page_Load(object sender, EventArgs e)
        {
            ViewState["cityid"] = Convert.ToInt32(Request.QueryString.Get("cityid"));
            cid = Convert.ToInt32(Request.QueryString.Get("cityid"));/* Convert.ToInt32(ViewState["Cid"].ToString());*/
            cn.Open();
            qry = "delete from city where cityid=" + cid;
            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            cn.Close();
            Response.Redirect("City.aspx");
        }

        protected void Button_Click(object sender, EventArgs e)
        {
            //Label1.Text = "You clicked the " + ((Control)sender).ID + " at " + DateTime.Now.ToLongTimeString() + ".";
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Amsement_park1.Admin
{
    public partial class WebForm47 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\AdminDatabase.mdf;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();
        string qry;
        int aid;
        protected void Page_Load(object sender, EventArgs e)
        {
            ViewState["rid"] = Convert.ToInt32(Request.QueryString.Get("rid"));
            aid = Convert.ToInt32(Request.QueryString.Get("rid"));/* Convert.ToInt32(ViewState["Cid"].ToString());*/
            cn.Open();
            qry = "delete from Restaurant where rid=" + aid;
            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            cn.Close();
            Response.Redirect("Restaurant.aspx");
        }
    }
}
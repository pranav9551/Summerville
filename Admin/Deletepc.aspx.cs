using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Amsement_park1.Admin
{
    public partial class WebForm61 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\AdminDatabase.mdf;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();
        string qry;
        int uid;
        protected void Page_Load(object sender, EventArgs e)
        {
            ViewState["pcid"] = Convert.ToInt32(Request.QueryString.Get("pcid"));
            uid = Convert.ToInt32(Request.QueryString.Get("pcid"));/* Convert.ToInt32(ViewState["Cid"].ToString());*/
            cn.Open();
            qry = "delete from ProductCategory where pcid=" + uid;
            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            cn.Close();
            Response.Redirect("Productcategory.aspx");
        }
    }
}
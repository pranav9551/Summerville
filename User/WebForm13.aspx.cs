using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace Amsement_park1.User
{
    public partial class WebForm13 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txtdate_TextChanged(object sender, EventArgs e)
        {
            DateTime date = DateTime.Today.Date;
            String today = date.ToString("dd-MM-yyyy");
            txtdate.Attributes["min"] = today;
        }

        protected void btnsub_Click(object sender, EventArgs e)
        {
            DateTime d1 = DateTime.Today;
            Label1.Text = txtdate.Text;

            DateTime d2 = DateTime.ParseExact(txtdate.Text, "dd-MM-yyyy", System.Globalization.CultureInfo.InvariantCulture);

            if (d2 < d1)
            {
                Label1.Text = "Not Valid Date....";
            }
            else
            {
                Label1.Text = "Completed";
            }
        }
    }
}
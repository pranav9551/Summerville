using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Amsement_park1.Admin
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Imgapic.ImageUrl = "../Adminpic/" + Session["pic"].ToString();
            lblaname.Text = Session["uname"].ToString();
            lalemail.Text = Session["email"].ToString();
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using Razorpay.Api;

using System.Net;


namespace Amsement_park1.User
{
    public partial class Payment : System.Web.UI.Page
    {
        public string orderId;

        protected void Page_Load(object sender, EventArgs e)
        {
            //rasorpay

            Dictionary<string, object> input = new Dictionary<string, object>();
            input.Add("amount", 100); // this amount should be same as transaction amount
            input.Add("currency", "INR");
            input.Add("receipt", "12121");
            input.Add("payment_capture", 1);

            string key = "rzp_test_B1hUmSqck7aam8";
            string secret = "xyFSiaEtq4hIXuKJEtUD5DSD";

            RazorpayClient client = new RazorpayClient(key, secret);
            System.Net.ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls12;
            Razorpay.Api.Order order = client.Order.Create(input);
            orderId = order["id"].ToString();



            //raser pay
        }
    }
}
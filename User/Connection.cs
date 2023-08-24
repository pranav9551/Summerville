using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace summervilleuser1.asset
{
    internal class Connection
    {
        public SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\AdminDatabase.mdf;Integrated Security=True");
        public SqlCommand cmd = new SqlCommand();
        public SqlDataReader dr;
        public SqlDataAdapter dap;
        public DataSet ds = new DataSet();
        public Connection()
        {

        }
        public void conopen()
        {
            cn.Open();

        }
        public void conclose()
        {
            cn.Close();
        }
    }
}
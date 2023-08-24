using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
namespace summervilleuser1.asset
{
    internal class login
    {
        Connection x = new Connection();
        public login()
        {
            //
            // TODO: Add constructor logic here
            //
        }
        public SqlDataReader login_detail(string qry)
        {
            x.conopen();
            x.cmd = new SqlCommand(qry, x.cn);
            x.dr = x.cmd.ExecuteReader();
            return x.dr;
            x.conclose();
        }
    }
}
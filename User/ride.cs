
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace Amsement_park1.User
{
    internal class ride
    {
        Connection x = new Connection();
        public ride()
        {
            //
            // TODO: Add constructor logic here
            //
        }
        public void rideins(string qry)
        {
            x.conclose();
            x.conopen();
            x.cmd = new SqlCommand(qry, x.cn);
            x.cmd.ExecuteNonQuery();
            x.conclose();

        }
        public SqlDataReader search(string qry)
        {
            x.conopen();
            x.cmd = new SqlCommand(qry, x.cn);
            x.dr = x.cmd.ExecuteReader();
            return x.dr;
            x.conclose();
        }
    }
}
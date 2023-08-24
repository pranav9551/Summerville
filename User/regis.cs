using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;


namespace Amsement_park1.User.images
{
    public class regis
    {

        Connection x = new Connection();
        public regis()
        {
            //
            // TODO: Add constructor logic here
            //
        }
        public void regisins(string qry)
        {
            x.conopen();
            x.cmd = new SqlCommand(qry, x.cn);
            x.cmd.ExecuteNonQuery();
            x.conclose();

        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;



/// <summary>
/// Summary description for restaurant
/// </summary>
public class restaurant
{
    Connection x = new Connection();
	public restaurant()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public void resins(string qry)
    {
        x.conopen();
        x.cmd = new SqlCommand(qry, x.cn);
        x.cmd.ExecuteNonQuery();
        x.conclose();

    }
}
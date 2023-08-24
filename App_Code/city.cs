using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;


/// <summary>
/// Summary description for city
/// </summary>
public class city
{
    Connection x = new Connection();
	public city()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public void cityins(string qry)
    {
        x.conopen();
        x.cmd = new SqlCommand(qry, x.cn);
        x.cmd.ExecuteNonQuery();
        x.conclose();

    }
}
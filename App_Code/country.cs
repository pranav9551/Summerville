using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

/// <summary>
/// Summary description for country
/// </summary>
public class country
{
    Connection x = new Connection();
	public country()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public void countryins(string qry)
    {
        x.conopen();
        x.cmd = new SqlCommand(qry, x.cn);
        x.cmd.ExecuteNonQuery();
        x.conclose();

    }
}
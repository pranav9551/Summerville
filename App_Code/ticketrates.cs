using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;


/// <summary>
/// Summary description for ticketrates
/// </summary>
public class ticketrates
{
    Connection x = new Connection();
	public ticketrates()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public void ratesins(string qry)
    {
        x.conclose();
        x.conopen();
        x.cmd = new SqlCommand(qry, x.cn);
        x.cmd.ExecuteNonQuery();
        x.conclose();

    }
}
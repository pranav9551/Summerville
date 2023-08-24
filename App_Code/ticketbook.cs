using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;


/// <summary>
/// Summary description for ticketbook
/// </summary>
public class ticketbook
{
    Connection x = new Connection();
	public ticketbook()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public void ticketins(string qry)
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
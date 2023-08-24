using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

/// <summary>
/// Summary description for @event
/// </summary>
public class event1
{
    Connection x = new Connection();
	public event1()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public void eventins(string qry)
    {
        x.conopen();
        x.cmd = new SqlCommand(qry, x.cn);
        x.cmd.ExecuteNonQuery();
        x.conclose();

    }
}
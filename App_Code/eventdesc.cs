using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

/// <summary>
/// Summary description for eventdesc
/// </summary>
public class eventdesc
{
    Connection x = new Connection();
	public eventdesc()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public void eventdescins(string qry)
    {
        x.conopen();
        x.cmd = new SqlCommand(qry, x.cn);
        x.cmd.ExecuteNonQuery();
        x.conclose();
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

/// <summary>
/// Summary description for foodsubtype
/// </summary>
public class foodsubtype
{
    Connection x = new Connection();
	public foodsubtype()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public void foodins(string qry)
    {
        x.conopen();
        x.cmd = new SqlCommand(qry, x.cn);
        x.cmd.ExecuteNonQuery();
        x.conclose();

    }
}
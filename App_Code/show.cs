using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

/// <summary>
/// Summary description for show
/// </summary>
public class show
{
    Connection x = new Connection();

	public show()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public void showins(string qry)
    {
        x.conopen();
        x.cmd = new SqlCommand(qry, x.cn);
        x.cmd.ExecuteNonQuery();
        x.conclose();

    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;


/// <summary>
/// Summary description for state
/// </summary>
public class state
{
    Connection x = new Connection();
	public state()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public void stateins(string qry)
    {
        x.conopen();
        x.cmd = new SqlCommand(qry, x.cn);
        x.cmd.ExecuteNonQuery();
        x.conclose();

    }
}
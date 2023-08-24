using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
/// <summary>
/// Summary description for ridecat
/// </summary>
public class ridecat
{
    Connection x = new Connection();
	public ridecat()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public void ride_catins(string qry)
    {
        x.conopen();
        x.cmd = new SqlCommand(qry, x.cn);
        x.cmd.ExecuteNonQuery();
        x.conclose();
    }

    public DataSet select(string qry)
    {
        x.dap = new SqlDataAdapter(qry, x.cn);
        x.dap.Fill(x.ds);
        return x.ds;
    }
}
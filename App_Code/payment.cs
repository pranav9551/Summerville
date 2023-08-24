using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

/// <summary>
/// Summary description for payment
/// </summary>
public class payment
{
    Connection x = new Connection();
	public payment()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public void insertpayment(string qry)
    {
        x.conopen();
        x.cmd = new SqlCommand(qry, x.cn);
        x.cmd.ExecuteNonQuery();
        x.conclose();
    }
}
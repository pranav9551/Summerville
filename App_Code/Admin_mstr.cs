using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
/// <summary>
/// Summary description for Admin_mstr
/// </summary>
public class Admin_mstr
{
    Connection x = new Connection();
	public Admin_mstr()
	{
		
	}
    public SqlDataReader  login_detail(string qry)
    {
        x.conopen();
        x.cmd = new SqlCommand(qry, x.cn);
        x.dr = x.cmd.ExecuteReader();
        return x.dr;
        x.conclose();

    }

}
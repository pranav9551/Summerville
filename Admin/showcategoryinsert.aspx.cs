﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Amsement_park1.Admin
{
    public partial class WebForm33 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\AdminDatabase.mdf;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();
        string qry;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_sub_Click(object sender, EventArgs e)
        {
            cn.Open();
            qry = "select * from show_category where ddlshowcategory= '" + txtshow.Text + "'";
            cmd = new SqlCommand(qry, cn);
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                Label1.Text = "Record alredy exist.... ";
            }
            else
            {
                cn.Close();
                cn.Open();
                qry = "insert into show_category values('" + txtshow.Text + "')";
                cmd = new SqlCommand(qry, cn);
                cmd.ExecuteNonQuery();
                cn.Close();
                Response.Redirect("showcategoryinsert.aspx");
            }
            cn.Close();
        }
    }
}
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace BCS6thEVFall2020DemoProject
{
    public class DBCommunicator
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader dr;

        public DBCommunicator()
        {
            string connect = ConfigurationManager.ConnectionStrings["ConStr"].ConnectionString;
            con = new SqlConnection(connect);
        }

        public void ExecuteDML(string Query)
        {
            cmd = new SqlCommand(Query, con);
            if (con.State == ConnectionState.Closed)
                con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}
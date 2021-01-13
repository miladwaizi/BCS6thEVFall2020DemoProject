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
        public string ExecuteProcedure_DML(string[] spParameters,string[] spValues,string ProcedureName)
        {
            SqlCommand cmd = new SqlCommand(ProcedureName, con);
            cmd.CommandType = CommandType.StoredProcedure;

            for(int i=0;i<spParameters.Length;i++)
            {
                if (i == spParameters.Length - 1)
                {
                    cmd.Parameters.Add(spParameters[spParameters.Length-1], SqlDbType.NVarChar, 500);
                    cmd.Parameters[spParameters[spParameters.Length - 1]].Direction = ParameterDirection.Output;
                }
                else
                cmd.Parameters.AddWithValue(spParameters[i], spValues[i]);

            }
            if(con.State==ConnectionState.Closed)
                con.Open();
            cmd.ExecuteNonQuery();

            string Error = (string)cmd.Parameters[spParameters[spParameters.Length - 1]].Value;

            con.Close();
            return Error;
        }
        public DataTable ExecuteProcedure_Select(string ProcedureName)
        {
            cmd = new SqlCommand(ProcedureName, con);
            cmd.CommandType = CommandType.StoredProcedure;
            if (con.State == ConnectionState.Closed)
                con.Open();
            dr = cmd.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Load(dr);
            dr.Close();
            con.Close();
            return dt;
        }
    }
}
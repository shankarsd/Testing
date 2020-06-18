using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace Test.AppsCode
{
    public class SqlConn
    {
        string conn = ConfigurationManager.ConnectionStrings["TestConn"].ConnectionString;
        //string conn = ConfigurationManager.AppSettings["TestConn2"].ToString();

        SqlConnection con;

        public SqlConn()
        {
            con = new SqlConnection(conn);
            con.Open();
        }

        public int DoTransaction(string SqlQry)
        {
            SqlCommand cmd = new SqlCommand(SqlQry, con);
            return int.Parse(cmd.ExecuteNonQuery().ToString());
        }

        public DataTable DoNonTransaction(string SqlQry)
        {
            SqlDataAdapter adp = new SqlDataAdapter(SqlQry, con);
            DataTable dt = new DataTable();
            adp.Fill(dt);
            return dt;
        }

        public int Aggregate(string SqlQry)
        {
            try
            {
                SqlCommand cmd = new SqlCommand(SqlQry, con);
                return int.Parse(cmd.ExecuteScalar().ToString());
            }
            catch
            {
                return 0;
            }
        }

        public string Aggregate_String(string Qry)
        {
            try
            {
                SqlCommand cmd = new SqlCommand(Qry, con);
                return cmd.ExecuteScalar().ToString();
            }
            catch
            {
                return null;
            }
        }
    }
}
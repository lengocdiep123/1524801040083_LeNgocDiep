using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace WebSchool.DAO
{
    /// <summary>
    /// Used this class for Sql database provider
    /// </summary>
    public class SqlDataProvider
    {
        /// <summary>
        /// SQL server connection string
        /// </summary>
        static string strConStr = ConfigurationManager.ConnectionStrings["websiteschoolConnectionString"].ConnectionString;
        /// <summary>
        /// Global SQL server connection
        /// </summary>

        public static SqlConnection connection;

        public static SqlConnection GetConnection()
        {
            if (connection == null) { connection = new SqlConnection(strConStr); }
            if (connection.State == ConnectionState.Closed)
                connection.Open();
            return connection;
        }

        #region DB Access Functions
        public DataTable GetTable(SqlCommand cmd)
        {
            try
            {
                if (cmd.Connection != null)
                {
                    using (var ds = new DataSet())
                    {
                        using (var da = new SqlDataAdapter())
                        {
                            da.SelectCommand = cmd;
                            da.Fill(ds);
                            return ds.Tables[0];
                        }
                    }
                }
                else
                {
                    using (SqlConnection conn = GetConnection())
                    {
                        using (var ds = new DataSet())
                        {
                            using (var da = new SqlDataAdapter())
                            {
                                da.SelectCommand = cmd;
                                da.SelectCommand.Connection = conn;
                                da.Fill(ds);
                                return ds.Tables[0];
                            }
                        }
                    }
                }
            }
            finally
            {
            }
        }

        public SqlDataReader ExecuteReader(SqlCommand cmd)
        {
            try
            {
                if (cmd.Connection != null)
                {
                    return cmd.ExecuteReader();
                }
                else
                {
                    using (SqlConnection conn = GetConnection())
                    {
                        cmd.Connection = conn;
                        return cmd.ExecuteReader();
                    }
                }
            }
            finally
            {
            }
        }


        public DataSet GetDsData(SqlCommand cmd)
        {
            try
            {
                if (cmd.Connection != null)
                {
                    using (var ds = new DataSet())
                    {
                        using (var da = new SqlDataAdapter())
                        {
                            da.SelectCommand = cmd;
                            da.Fill(ds);
                            return ds;
                        }
                    }
                }
                else
                {
                    using (SqlConnection conn = GetConnection())
                    {
                        using (var ds = new DataSet())
                        {
                            using (var da = new SqlDataAdapter())
                            {
                                da.SelectCommand = cmd;
                                da.SelectCommand.Connection = conn;
                                da.Fill(ds);
                                return ds;
                            }
                        }
                    }
                }
            }
            finally
            {
            }
        }

        public DataTable GetTable(string sql)
        {
            try
            {
                using (SqlConnection conn = GetConnection())
                {
                    using (SqlCommand cmd = conn.CreateCommand())
                    {
                        cmd.CommandType = CommandType.Text;
                        cmd.CommandText = sql;
                        using (var ds = new DataSet())
                        {
                            using (var da = new SqlDataAdapter())
                            {
                                da.SelectCommand = cmd;
                                da.SelectCommand.Connection = conn;
                                da.Fill(ds);
                                return ds.Tables[0];
                            }
                        }
                    }
                }
            }
            finally
            {
            }
        }

        public static void ExeCuteNonquery(SqlCommand cmd)
        {
            try
            {
                SqlConnection conn = GetConnection();
                cmd.Connection = conn;
                cmd.ExecuteNonQuery();
            }
            finally
            {
            }
        }

        public static void ExeCuteNonquery(string sql)
        {
            try
            {
                SqlConnection conn = GetConnection();
                var cmd = new SqlCommand(sql, conn);
                cmd.ExecuteNonQuery();
            }
            finally
            {
            }
        }

        public SqlDataReader ExecuteReader(string sql)
        {
            try
            {
                var cmd = new SqlCommand(sql, GetConnection());
                return cmd.ExecuteReader();
            }
            finally
            {
            }
        }

        public string ExecuteScalar(string sql)
        {
            try
            {
                SqlConnection conn = GetConnection();
                var cmd = new SqlCommand(sql, conn);
                return cmd.ExecuteScalar().ToString();
            }
            finally
            {
            }
        }

        public object ExecuteScalar(SqlCommand cmd)
        {
            try
            {
                SqlConnection conn = GetConnection();
                cmd.Connection = conn;
                return cmd.ExecuteScalar();
            }
            finally
            {
            }
        }

        public int DBSize()
        {
            using (var cmd = new SqlCommand("select sum(size) * 8 * 1024 from sysfiles"))
            {
                cmd.CommandType = CommandType.Text;
                return (int)ExecuteScalar(cmd);
            }
        }

        public bool CheckConnect()
        {
            var cmd = new SqlCommand("select getdate()");
            if (GetTable(cmd).Rows.Count > 0)
                return true;
            return false;
        }
        #endregion
    }
}
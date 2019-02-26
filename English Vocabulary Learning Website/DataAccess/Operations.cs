using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace DataAccess
{
    public static class Operations
    {
        static SqlConnection myConn;
        static SqlCommand cmd;
        static SqlDataAdapter sda;
#pragma warning disable CS0169 // The field 'Operations.sdr' is never used
        static SqlDataReader sdr;
#pragma warning restore CS0169 // The field 'Operations.sdr' is never used
        static Operations()
        {
            myConn = new SqlConnection();
            myConn.ConnectionString = ConfigurationManager.ConnectionStrings["StudyConn"].ConnectionString;
            cmd = new SqlCommand();
            cmd.Connection = myConn;
            sda = new SqlDataAdapter();
        }

        


        #region 调用带有输入型参数的存储过程或者SQL语句scalar
        public static int ExecuteSQLByScalar(string cmdText, CommandType cmdType, string[] names, object[] values)
        {
            cmd.CommandText = cmdText;
            cmd.CommandType = cmdType;
            cmd.Parameters.Clear(); //因为上面定义是静态的
            if (names != null)
            {
                for (int i = 0; i < names.Length; i++)
                {
                    cmd.Parameters.AddWithValue(names[i], values[i]);
                }
            }

            if (myConn.State == ConnectionState.Closed)
            {
                myConn.Open();
            }
            int count = (int)cmd.ExecuteScalar();
            myConn.Close();
            return count;
        }
        #endregion

        #region 调用带有输入型参数的存储过程或者SQL语句返回受影响的行数
        public static int ExecuteSQLByQuery(string cmdText, CommandType cmdType, string[] names, object[] values)
        {
            cmd.CommandText = cmdText;
            cmd.CommandType = cmdType;
            cmd.Parameters.Clear(); //因为上面定义是静态的
            if (names != null)
            {
                for (int i = 0; i < names.Length; i++)
                {
                    cmd.Parameters.AddWithValue(names[i], values[i]);
                }
            }

            if (myConn.State == ConnectionState.Closed)
            {
                myConn.Open();
            }
            int count = cmd.ExecuteNonQuery();
            myConn.Close();
            return count;
        }
        #endregion

        #region 调用无参数的存储过程或者SQL语句
        public static int ExecuteSQL(string cmdText, CommandType cmdType)
        {
            cmd.CommandText = cmdText;
            cmd.CommandType = cmdType;
            cmd.Parameters.Clear(); //因为上面定义是静态的
            if (myConn.State == ConnectionState.Closed)
            {
                myConn.Open();
            }
            int count = cmd.ExecuteNonQuery();
            myConn.Close();
            return count;
        }
        #endregion

        #region 调用带有输入型参数的存储过程或者SQL语句,返回一个datatable
        public static DataTable GetDataTable(string cmdText, CommandType cmdType, string[] names, object[] values)
        {
            cmd.CommandText = cmdText;
            cmd.CommandType = cmdType;
            cmd.Parameters.Clear(); //因为上面定义是静态的
            if (names != null)
            {
                for (int i = 0; i < names.Length; i++)
                {
                    cmd.Parameters.AddWithValue(names[i], values[i]);
                }
            }


            DataTable dt = new DataTable();
            sda = new SqlDataAdapter(cmd);
            sda.Fill(dt);

            return dt;
        }
        #endregion

        #region 调用带无参数的存储过程或者SQL语句,返回一个datatable
        public static DataTable GetDataTable(string cmdText, CommandType cmdType)
        {
            cmd.CommandText = cmdText;
            cmd.CommandType = cmdType;
            cmd.Parameters.Clear(); //因为上面定义是静态的
            DataTable dt = new DataTable();
            sda = new SqlDataAdapter(cmd);
            sda.Fill(dt);
            return dt;
        }
        #endregion
    
    }
}

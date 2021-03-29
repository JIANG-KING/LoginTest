using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.Web;

namespace LoginTest
{

    public class DatabaseTest
    {
        public static string con = "";  //这里是保存连接数据库的字符串  
        public static SqlConnection sqlCnt = new SqlConnection(con);
        public SqlDataAdapter SqlLogin(string username, string password)
        {
            string strSQL = "select username,password from LoginInfo where username=@letter1 and password=@letter2";
            SqlCommand cmd = Injection(strSQL,username,password);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            return da;
        }
        public SqlCommand Injection(string sql, string letter1, string letter2)
        {
            SqlCommand command = new SqlCommand();
            command.CommandText = sql;
            command.Parameters.AddWithValue("@letter1", letter1);
            command.Parameters.AddWithValue("@letter2", letter2);
            command.Connection = sqlCnt;
            return command;
        } 
        
    }
}

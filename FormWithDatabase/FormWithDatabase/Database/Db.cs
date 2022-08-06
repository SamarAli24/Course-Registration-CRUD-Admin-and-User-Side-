using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using FormWithDatabase.Model;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace FormWithDatabase.Database
{
    public class Db
    {
            
        public static bool LoginInsert(string Username, string Accountpassword)
        {

            SqlConnection sqlCon = new SqlConnection(ConfigurationManager.AppSettings["CourseRegistration"]);

            try
            {

                if (sqlCon.State == System.Data.ConnectionState.Closed)
                {
                    sqlCon.Open();


                }

                SqlCommand sqlCmd = new SqlCommand();
                sqlCmd.Connection = sqlCon;

                sqlCmd.Parameters.Add("@Username", SqlDbType.VarChar).Value = Username;
                sqlCmd.Parameters.Add("@Accountpassword", SqlDbType.VarChar).Value = Accountpassword;
               
                string query = "INSERT INTO LoginInfo(Username,Accountpassword) VALUES (@Username,@Accountpassword)";
                sqlCmd.CommandText = query;



                sqlCmd.ExecuteNonQuery();
                sqlCon.Close();


                return true;
            }


            catch (Exception e)
            {
                sqlCon.Close();
                return false;

            }





        }





    }
}
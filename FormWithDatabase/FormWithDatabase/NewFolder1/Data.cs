using System;
using FormWithDatabase.Model;
using FormWithDatabase.NewFolder1;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace FormWithDatabase.NewFolder1
{
    public class Data
    { 
    

        public static bool Insert(string FullName, string Email,  string pasword , string PhoneNumber, string Gender , string Courses)
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

                sqlCmd.Parameters.Add("@FullName", SqlDbType.VarChar).Value = FullName;
                sqlCmd.Parameters.Add("@Email", SqlDbType.VarChar).Value = Email;
                sqlCmd.Parameters.Add("@pasword", SqlDbType.VarChar).Value = pasword;
                sqlCmd.Parameters.Add("@PhoneNumber", SqlDbType.VarChar).Value = PhoneNumber;
                sqlCmd.Parameters.Add("@Gender", SqlDbType.VarChar).Value = Gender;
                sqlCmd.Parameters.Add("@Courses", SqlDbType.VarChar).Value = Courses;
               



                string query = "INSERT INTO Register(FullName,Email,pasword,PhoneNumber,Gender,Courses) VALUES (@FullName,@Email,@pasword,@PhoneNumber ,@Gender,@Courses)";
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


        public static List<Course> getNames()
        {
            List<Course> nameList = new List<Course>();

            SqlConnection sqlServerCon = new SqlConnection(ConfigurationManager.AppSettings["CourseRegistration"]);
            try
            {
                if (sqlServerCon.State == System.Data.ConnectionState.Closed)
                {
                    sqlServerCon.Open();
                }

                SqlCommand sqlServerCmd = new SqlCommand();
                sqlServerCmd.Connection = sqlServerCon;

                string sql = "SELECT FullName, Email , pasword,PhoneNumber,Gender,Courses FROM Register Where 1=1";

                sqlServerCmd.CommandText = sql;
                SqlDataReader sqlServerReader = sqlServerCmd.ExecuteReader();

                if (sqlServerReader.HasRows)
                {
                    while (sqlServerReader.Read())
                    {
                        Course courseModel = new Course();

                        courseModel.FullName = sqlServerReader["FullName"].ToString();
                        courseModel.Email = sqlServerReader["Email"].ToString();
                        courseModel.pasword = sqlServerReader["pasword"].ToString();
                        courseModel.PhoneNumber = sqlServerReader["PhoneNumber"].ToString();
                        courseModel.Gender = sqlServerReader["Gender"].ToString();
                        courseModel.Courses = sqlServerReader["Courses"].ToString();

                        nameList.Add(courseModel);
                    }

                    sqlServerReader.Close();
                }


                sqlServerCon.Close();
            }
            catch (Exception e)
            {
                sqlServerCon.Close();
            }

            return nameList;
        }





        public static bool Update(string FullName,string PhoneNumber,string Courses)
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

               
                sqlCmd.Parameters.Add("@FullName", SqlDbType.VarChar).Value = FullName;
              
                sqlCmd.Parameters.Add("@PhoneNumber", SqlDbType.VarChar).Value = PhoneNumber;

                sqlCmd.Parameters.Add("@Courses", SqlDbType.VarChar).Value = Courses;
                string query = " Update Register set FullName=@FullName, Courses=@Courses Where PhoneNumber=@PhoneNumber";
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
        public static bool Delete(string FullName, string PhoneNumber, string Courses)
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

                sqlCmd.Parameters.Add("@FullName", SqlDbType.VarChar).Value = FullName;
               
                sqlCmd.Parameters.Add("@PhoneNumber", SqlDbType.VarChar).Value = PhoneNumber;
            
                sqlCmd.Parameters.Add("@Courses", SqlDbType.VarChar).Value = Courses;

                string query = "Delete from Register Where PhoneNumber=@PhoneNumber";
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





 


  








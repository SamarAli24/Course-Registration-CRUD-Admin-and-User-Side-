using System;
 
using FormWithDatabase.Model;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FormWithDatabase
{
   
    public partial class WebForm1 : System.Web.UI.Page
    {
    

         
        protected void Page_Load(object sender, EventArgs e)

        {
             

           if (!IsPostBack)
            {
                ViewState["ViewStateId"] = System.Guid.NewGuid().ToString();
                Session["SessionId"] = ViewState["ViewStateId"].ToString();
            }
            else
            {
                if (ViewState["ViewStateId"].ToString() != Session["SessionId"].ToString())
                {
                    
                }

               Session["SessionId"] = System.Guid.NewGuid().ToString();
                ViewState["ViewStateId"] = Session["SessionId"].ToString();
            }




        }

        








        public static bool Validate(string Username, string Accountpassword)
        {

            bool IsValid = false;

            

            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["CourseRegistration"]);

            try
            {
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }



                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;


                cmd.Parameters.Add("@Username", SqlDbType.VarChar).Value = Username;
                cmd.Parameters.Add("@Accountpassword", SqlDbType.VarChar).Value = Accountpassword;

                string query1 = "Select Username, Accountpassword from LoginInfo where Username=@Username and Accountpassword=@Accountpassword ";

                cmd.CommandText = query1;
                SqlDataReader reader = cmd.ExecuteReader();

                if (reader.HasRows)
                {
                    
                    IsValid = true;
                   
                  


                }
                else
                {
                    IsValid = false;
                }


            }

            catch(Exception e) {  
              con.Close();

            }
            con.Close();
            return IsValid;

        }

         





        protected void Button1_Click(object sender, EventArgs e)
        {


            bool isCorrect = Validate(Textbox1.Text, Textbox2.Text);
            if (isCorrect)
            {


                Session["Username"] = Textbox1.Text;

                if (Textbox1.Text == "alisam")
                {

                    Response.Redirect("CoursesOffer/CoursesOffered.aspx");

                }
                else
                {
                    Response.Redirect("files/Registration.aspx");

                }               
                    
                    
                   

            }

            else
            {
                Response.Write("Invalid ID and Password");

            }





        }

        protected void Button2_Click(object sender, EventArgs e)
        {


            Response.Write("Cancelled");




        }







         




    }
}
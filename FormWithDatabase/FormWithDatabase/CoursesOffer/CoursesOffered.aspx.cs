using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FormWithDatabase.CoursesOffer
{
    public partial class CoursesOffered : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["CourseRegistration"]);

        protected void Page_Load(object sender, EventArgs e)
        {

            if (con.State == System.Data.ConnectionState.Closed)
            {
                con.Open();
            }

            string query = "Select * from Courses";

            SqlDataAdapter adapter = new SqlDataAdapter(query,con);
            DataTable dt = new DataTable();
            adapter.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }
   
 





    }
}
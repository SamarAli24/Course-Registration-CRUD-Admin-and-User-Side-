using FormWithDatabase.Model;
using FormWithDatabase.NewFolder1;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FormWithDatabase.Admin
{
    public partial class admin : System.Web.UI.Page
    {
        bool isPageRefreshed = false;
        string message = "";
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void StudentRecord()
        {
            ListOfName.Text = "";
            List<Course> nameList = Data.getNames();

            foreach (Course CourseReg in nameList)
            {
                ListOfName.Text += "<p> FullName: " + CourseReg.FullName.ToString()

                    + ", Email: " + CourseReg.Email.ToString() +
                     ", pasword: " + CourseReg.pasword.ToString() +
                      ", PhoneNumber: " + CourseReg.PhoneNumber.ToString() +
                       ", Gender: " + CourseReg.Gender.ToString() +
                       ", Courses: " + CourseReg.Courses.ToString() +


                    "</p>";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (!isPageRefreshed)
            {
                bool isInserted = Data.Update(name.Text.ToString(), no.Text.ToString(), uni.Text.ToString());
                if (isInserted)
                {
                    message = "<br/>  Updated <br/>";
                    Console.WriteLine(message);
                    StudentRecord();
                }
                else

                {
                    message = "<br/> Not Updated <br/>";
                    Console.WriteLine(message);
                    StudentRecord();
                }
            }


        }

     

        protected void Button2_Click1(object sender, EventArgs e)
        {
            if (!isPageRefreshed)
            {
                bool isInserted = Data.Delete(name.Text.ToString(), no.Text.ToString(), uni.Text.ToString());
                if (isInserted)
                {
                    message = "<br/>  Deleted <br/>";
                    Console.WriteLine(message);
                    StudentRecord();
                }
                else

                {
                    message = "<br/> Not Deleted <br/>";
                    Console.WriteLine(message);
                    StudentRecord();
                }
            }
        }
    }
}
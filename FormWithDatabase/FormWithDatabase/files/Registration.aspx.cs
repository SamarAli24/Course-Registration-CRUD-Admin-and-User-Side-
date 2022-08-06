using FormWithDatabase.Model;
using FormWithDatabase.NewFolder1;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FormWithDatabase.files
{
    public partial class Registration : System.Web.UI.Page
    {

        

        protected void Page_Load(object sender, EventArgs e)
        {
           


                if (Session["Username"] != null) {

                    if (Session["Username"].ToString() == "alisam")
                    {
                     Response.Write("Admin");
                      // Response.Redirect("~/CoursesOffer/CoursesOffered.aspx");
                }
                    else
                    {
                        Response.Write("Guest");
                    }

                
                }
                else
                {
                    Response.Redirect("~/WebForm1.aspx");
                }


        }


        protected void Button2_Click(object sender, EventArgs e)
        {
            
         



            if (RadioButton1.Checked)
                {
                Data.Insert(Textbox3.Text.ToString(), Textbox4.Text.ToString(), Textbox5.Text.ToString(), Textbox6.Text.ToString(), RadioButton1.Text.ToString(), DropDownlist1.Text.ToString());

                }
                else if (RadioButton2.Checked)

                {
                 Data.Insert(Textbox3.Text.ToString(), Textbox4.Text.ToString(), Textbox5.Text.ToString(), Textbox6.Text.ToString(), RadioButton2.Text.ToString(), DropDownlist1.Text.ToString());
                }


            




        }

         
    }   }

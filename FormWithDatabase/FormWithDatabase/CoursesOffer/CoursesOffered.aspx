<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CoursesOffered.aspx.cs" Inherits="FormWithDatabase.CoursesOffer.CoursesOffered" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

        <style>

*{
  padding: 0;
  margin: 0;
  text-decoration: none;
  list-style: none;
  box-sizing: border-box;
}
body{
  font-family: montserrat;
}
nav{
  background: #273746;
  height: 80px;
  width: 100%;
}
label.logo{
  color: white;
  font-size: 35px;
  line-height: 80px;
  padding: 0 100px;
  font-weight: bold;
}
nav ul{
  float: right;
  margin-right: 20px;
}
nav ul li{
  display: inline-block;
  line-height: 80px;
  margin: 0 5px;
}
nav ul li a{
  color: white;
  font-size: 17px;
  padding: 7px 13px;
  border-radius: 3px;
  text-transform: uppercase;
}
a.active,a:hover{
  background: black;
  transition: .5s;
}
.checkbtn{
  font-size: 30px;
  color: white;
  float: right;
  line-height: 80px;
  margin-right: 40px;
  cursor: pointer;
  display: none;
}
#check{
  display: none;
}
@media (max-width: 952px){
  label.logo{
    font-size: 30px;
    padding-left: 50px;
  }
  nav ul li a{
    font-size: 16px;
  }
}
            @media (max-width: 858px) {
                .checkbtn {
                    display: block;
                }

                ul {
                    position: fixed;
                    width: 100%;
                    height: 100vh;
                    background: #2c3e50;
                    top: 80px;
                    left: -100%;
                    text-align: center;
                    transition: all .5s;
                }

                nav ul li {
                    display: block;
                    margin: 50px 0;
                    line-height: 30px;
                }

                    nav ul li a {
                        font-size: 20px;
                    }

                 
            }

            span{
                color:brown;
            }

            #GridView1  
{  
    margin-left:auto;  
    margin-right:auto;  
    width:800px;  
    height:500px;  
}  

   h1{
       color:white;
       font-size:45px;
   }
      h2{
       color:white;
   }
     
           
    </style>




</head>
<body style="background-color: black;">
      <form runat="server">
    
<div  class="navbar"> 
     
   

     <nav>
     
 
      <label class="logo">DarteX <span>  Solutions</span></label>
      <ul>
        <li><a href="#">Home</a></li>
        <li><a href="#">About</a></li>
        <li><a href="/files/Registration.aspx">Course Registration</a></li>

           

           
        <li><a href="#">Contact Us</a></li>
        
      </ul>
    </nav>




</div>

          <br/>
          

       <h1  style="text-align:center;">Courses We Offer !</h1>
        
        
          <br/>
          <br/>
           

               <h2 style="text-align:center;"> Courses Details</h2>
     
          <br/>

         
            <asp:GridView ID="GridView1" runat="server" HeaderStyle-BackColor="Brown" ForeColor="White" AutoGenerateColumns="false" Height="427px" Width="713px">

                <Columns>

                    <asp:BoundField DataField="CourseCode"  ItemStyle-HorizontalAlign="Center" HeaderText="Course Code" /> 
             
                     <asp:BoundField DataField="CourseName" ItemStyle-HorizontalAlign="Center" HeaderText="Course Name" /> 
                     <asp:BoundField DataField="CourseVenue" ItemStyle-HorizontalAlign="Center" HeaderText="Course Venue" /> 
                
                     <asp:BoundField DataField="CourseTime" ItemStyle-HorizontalAlign="Center" HeaderText="Course Time" /> 



                </Columns>



            </asp:GridView>

                
              

        
    </form>
    
</body>
</html>

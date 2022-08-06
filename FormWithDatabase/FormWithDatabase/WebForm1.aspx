<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="FormWithDatabase.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="JavaScript.js"></script>
 

    <style>

        body {
    margin: 0;
    padding: 0;
    font-family: sans-serif;
   
    height: 100vh;
    border-radius: 15px;
    background-image: url('image/blur.jfif');
}

.center h1 {
    text-align: center;
    padding: 0 0 20px 0;
    border-bottom: 1px solid silver;
            margin-top: 10px;
        }

.center form {
    
    padding: 0 40px;
    box-sizing: border-box;
}


.center {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%,-50%);
    background: rgba(0,0,0,0.5);
    color:#fff;
    border-radius: 7px;
            width: 367px;
        }

input[type=text], input[type=password], button[type=button] {
        border-style: solid;
            border-color: inherit;
            border-width: 1px;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            box-sizing: border-box;
    }

#Button1 {
    background-color: #F03911;
    color: black;
    padding: 10px 15px;
            margin-left: 25px;
        }

    #Button1:hover {
        opacity: 0.8;
    }

psw {
    float: right;
    margin: 30px 0;
}

 
    </style>



    <script language="javascript" type="text/javascript">

        function Validate() {
            var email = document.getElementById("Textbox1").value;
            var password = document.getElementById("Textbox2").value;


            if (email == "" || password == "") {

                alert("Email and Password cannot be empty !");
                
                return false;
            }

            else if (email == "" ) {

                alert("Email cannot be empty !");
                document.getElementById("Textbox1").focus();
                return false;
            }
            else if (password == "") {

                alert("Password cannot be empty !");
                document.getElementById("Textbox2").focus();
                return false;
            }
 
            return true;
        }

  
 

    </script>


</head>
<body style="">

    <div class="center"> 
    <h1>Login</h1>
    <form runat="server">


        <div class="field1">
     <asp:Label ID="Label1" runat="server" Text="Label"><h2>Email: </h2></asp:Label>
      <asp:TextBox ID="Textbox1" runat="server" Width="270px"  placeholder="Enter Email">   </asp:TextBox>
 
            
            

        </div>
          
     
           <div class="field2">

        <asp:Label ID="Label2" runat="server" Text="Label"> <h3>Password: </h3> </asp:Label>
         <asp:TextBox ID="Textbox2" runat="server" Width="267px"  placeholder="Enter Password"></asp:TextBox> 

                  
                 </div>


  <br />
      <asp:Button ID="Button1" runat="server" Text="Submit" Width="218px"
          BorderColor="Black"  OnClientClick="Validate()"
           OnClick="Button1_Click" />
             
        <br />
        <br />
         

        <div class="container" style="background-color:rgba(0,0,0,0.5);">
            
      <br />
    <span class="psw">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Forgot <a href="#">password?</a></span>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="#">Sign in</a></div>

      
            
    </form>
        </div>

</body>
</html>

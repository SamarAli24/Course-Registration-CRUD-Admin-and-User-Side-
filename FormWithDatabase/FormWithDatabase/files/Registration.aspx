<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="FormWithDatabase.files.Registration" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

 
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title></title>

 
 


    <style type="text/css">
        #Text6 {
            width: 289px;
        }


        body {
    margin: 0;
    padding: 0;
    font-family: sans-serif;
    background: black;
    height: 100vh;
    border-radius: 10px;
}


.center h1 {
    text-align: center;
    padding: 0 0 20px 0;
    border-bottom: 1px solid silver;
}

.center form {
    border-style: ridge;
  
    box-sizing: border-box;
}

form{
    
    display:inline-block;
    width: 336px;
}

.centerform {
    position: absolute;
    top: 107%;
    left: 44%;
    transform: translate(-50%,-50%);
    background: white;
    border-radius: 7px;
    height: 964px;
    margin-left:40px;
    width: 343px;
}

input[type=text], input[type=password], button[type=button] {
    border-style: solid;
    border-color: inherit;
    border-width: 1px;
    padding: 12px 20px;
    margin: 10px 0 10px 10px;
    display: inline-block;
    
    box-sizing: border-box;
    }

#Button2 {
    background-color: #2E86C1;
    color: black;
    padding: 14px 18px;
    margin-right: 10px  20px;
            margin-left: 56px;
            margin-top: 0px;
        }

    #Button2:hover {
        opacity: 0.8;
    }
    h3{
        color:white;
         
        font-size:50px;
        text-align:center;
        margin-right:60px;
    }

 

    </style>
 


</head>
<body>

    <h3>Register here!</h3>
 
<div class="centerform">  
<h1> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Registration</h1>
        <hr style="width: 337px; height: -12px;" />
     
        <p> &nbsp;</p>
 
<form runat="server" style="height: 859px; margin-left: 0px;" >
    <asp:Label ID="Label3" runat="server" Text="Label"><h2>Name: </h2></asp:Label>
    <asp:TextBox ID="Textbox3" runat="server" Width="277px"  placeholder="Enter Name" ></asp:TextBox>

  
        <hr style="width: 337px; height: -12px;" />
     
    <asp:Label ID="Label4" runat="server" Text="Label"> <h2>Email: </h2></asp:Label>
       <asp:TextBox ID="Textbox4" runat="server" Width="279px"  placeholder="Enter Email"></asp:TextBox>
    
   <br />
        <hr style="width: 337px; height: -12px;" />
     
    <asp:Label ID="Label5" runat="server" Text="Label"> <h2>Password: </h2></asp:Label>
       <asp:TextBox ID="Textbox5" runat="server" Width="270px" TextMode="Password"  placeholder="Enter Password"></asp:TextBox>
    <br />
        <hr style="width: 337px; height: -12px;" />
     
   <br />
    <asp:Label ID="Label6" runat="server" Text="Label"> <h2> Phone Number:</h2></asp:Label>
       <br />
   <asp:TextBox ID="Textbox6" runat="server" Width="270px"  TextMode="Phone" placeholder="Enter Phone Number" Height="25px" style="margin-left: 10px"></asp:TextBox>

   <br />
   
 
 
         
        <asp:Label runat="server" Text="Label7"> <h2> Gender: </h2></asp:Label>
        <hr style="width: 337px; height: -12px;" />
     
        <asp:RadioButton ID="RadioButton1" runat="server" Text="Male"  GroupName="Gender"  />
 
        <asp:RadioButton ID="RadioButton2" runat="server" Text="Female"  GroupName="Gender"  />
        
        <br />

    <asp:Label runat="server" Text="Label8"> <h2> Course: </h2></asp:Label>

  
   <asp:DropDownList runat="server" ID="DropDownlist1"  value="" style="margin-left: 5px" Width="154px" Height="16px"> 
    <asp:ListItem> Select Course </asp:ListItem>
<asp:ListItem>  Relational Database System </asp:ListItem>
<asp:ListItem> Power Bi </asp:ListItem>
<asp:ListItem> Object Oriented Programming </asp:ListItem>
<asp:ListItem> Software Development</asp:ListItem>
<asp:ListItem> Discrete Structures </asp:ListItem>
<asp:ListItem> Data Structure </asp:ListItem>
<asp:ListItem> Machine Learning </asp:ListItem>

 </asp:DropDownList>

 

    

        <br />
&nbsp;&nbsp;&nbsp;<br />
    <br />

      <asp:Button ID="Button2" runat="server" Text="Submit" Width="213px"
          BorderColor="Black"  OnClick="Button2_Click" Height="47px" />
             
        <br />



</form>

</div>


 


</body>
</html>
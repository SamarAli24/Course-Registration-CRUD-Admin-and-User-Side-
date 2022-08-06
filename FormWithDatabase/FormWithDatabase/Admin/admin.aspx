<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="FormWithDatabase.Admin.admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>


    <style>
    
        form{
            padding:14px 18px;
            border:5px solid black;
            display:inline-block;
            text-align:center;
        }


        body{
            text-align:center;
          background-color: #ECF0F1 ;

        }
        h1{
            text-align:center;
            color:black;
        }

    </style>


</head>
<body >
     <h1>Admin Settings</h1>
     
    <form runat="server"> 
        <div>


            <br />
            <br />

            
         
        <label style="color:black">Enter Full Name</label><br />
        <asp:TextBox ID="name" runat="server" Height="24px" Width="244px"> FullName</asp:TextBox><br />
         <br />
             <br />
   
        <label  style="color:black">Enter Phone Number</label> <br />

        <asp:TextBox ID="no" runat="server" Height="24px" Width="244px"> PhoneNumber</asp:TextBox><br />
         <br />
      <br />
        <label style="color:black">Enter Course Name</label><br />
       
        <asp:TextBox ID="uni" runat="server" Height="24px" Width="244px"> Course </asp:TextBox><br />
        &nbsp;&nbsp;&nbsp;
        <br />
             <br />
        <asp:Button ID="update" runat="server" BackColor="Red" OnClick="Button1_Click" Text="Update" Width="86px" Height="26px" />
        &nbsp;&nbsp;
        <asp:Button ID="delete" runat="server" BackColor="Red" OnClick="Button2_Click1" Text="Delete" Width="86px" Height="26px" />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;
            </div>
          <asp:Literal ID="ListOfName" runat="server"></asp:Literal>
        </form>
s</body>
</html>

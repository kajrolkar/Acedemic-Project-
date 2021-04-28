
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="pcuDE.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head runat="server">
    <title>Sign In</title>
    <link rel="stylesheet" href="login.css" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    
   
    
    </head>
<body>
    <header style="background-color:white;height:80px;border-bottom-style:solid;border-bottom-width:5px;border-top-style:solid;border-top-width:5px;">
        
        <img width="195" height="60" src="slider/updated.png" style="border-radius:15px; margin-left: 30px;
            margin-top: 3px;"  />
        <a href="WebForm1.aspx"><img height="30" src="dashboard_image/icons8_arrow_pointing_left_48.png" role="link"  title="To Home" style="margin-bottom:15px;margin-left:1000px;" /></a>
            </header><br /><br /><br /><br />
    <form id="form1" runat="server" class="login-form" style="border-bottom-style:solid;border-bottom-width:5px;">
        <h1>Login</h1>
        <div class="txtb">
            <asp:TextBox ID="txtUsername" runat="server" ></asp:TextBox>            
            <span data-placeholder="Username/Mobile No/Adhar Id"></span>
        </div>

        <div class="txtb">
            <asp:TextBox ID="txtPin" TextMode="Password" runat="server"></asp:TextBox>        
            <span data-placeholder="PIN"></span>
        </div>

        <asp:Button ID="btnSubmit" runat="server" Text="LogIn" class="logbtn" OnClick="btnSubmit_Click"/>        <div class="bottom-text">
            Don't have digital Locker account?<a href="SignUp.aspx">SignUp</a>
        </div>
        <asp:Label ID="check" runat="server" Text=""></asp:Label>
    </form>

    <script type="text/javascript">

        $(".txtb input").on("focus", function () {
            
            $(this).addClass("focus");
        });

        $(".txtb input").on("blur", function () {
            if($(this).val()=="")
            $(this).removeClass("focus");
        });
    </script>


    
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="pcuDE.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <title></title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=0.5,maximum-scale=1.0"/>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
   <link rel="stylesheet" href="cssFile/pikaday.css" type="text/css" />
    <link rel="stylesheet" href="cssFile/site.css" type="text/css" />
    <link rel="stylesheet" href="cssFile/theme.css" type="text/css" />
    <script src="cssFile/pikaday.js" type="text/javascript"></script>
    <link rel="stylesheet" href="app.css" />
    <link rel="stylesheet" href="signup.css" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
    
  
    
    
    <style type="text/css">
        .auto-style1 {
            height: 80px;
            width: 200px;
            margin-left: 42px;
        }
    </style>
    
  
    
    
</head>
<body class="theme-light sisu" data-gr-c-s-loaded="true">
    <div style="float:left">
        <header style="background-color:black;height:20px;">

    </header>
    </div><header style="background-color:black;height:20px;">

    </header>
    <div id="root">
        <div class="_3RJb8"  style="position:absolute;">
           
            <div class="_1svi6 _3zskJ" style="border-radius:15px;align-content:center;" >
                <div class="_22_ne" style="background-image:linear-gradient(130deg,#3498db,#8e44ad);">
                    <div class="_1WjCc" style="border-bottom-left-radius:15px;border-top-left-radius:15px;">
                        <div>
                            <h1 class="_2oi11">Join The Secure Digital Locker</h1>
                            <p class="_2XrBZ">"Pocket Certificate Using Double Encryption........."</p>

                        </div>
                        <div class="_3f7VH">Project By</div>
                        <a class="_3ajPG _1TLFO">@Karan Kajrolkar</a>
                </div>

            </div>
                <div class="_15Nsj">
                  
                    <div class="_3TiUV LxjOo">
                        
                      <div class="_21_RP _3d-56">
                          <form id="signUP" name="myForm" runat="server" class="signup-form" >
                              
        <div>
            <img style="align-content:center;border-radius:10px;" src="slider/updated.png" class="auto-style1" />
     
                             <div style="height:20px;"></div>
               </div>
                              <div style="font-weight:bold;text-align:center;font-size:20px;"><h1 style="color:red;">SIGN UP</h1></div>
        <div class="txtb" style="height:47px;">
            <asp:TextBox ID="Username" runat="server" Font-Size="15px" ForeColor="#333" BorderStyle="None" BorderWidth="0px" AutoCompleteType="Disabled" style="padding:0 5px;height:40px;background:none;width:100%;"></asp:TextBox>            
            <span data-placeholder="Username/Mobile No/Adhar Id"></span>
        </div >
                              <div class="txtb" style="height:47px;">
            <asp:TextBox ID="txtDob" runat="server" Font-Size="15px" ForeColor="#333" BorderStyle="None" AutoCompleteType="Disabled" BorderWidth="0px" style="padding:0 5px;height:40px;background:none;width:100%;"></asp:TextBox>            
            <span data-placeholder="Your's Birth date"></span>
             <script type="text/javascript">
                 var picker = new Pikaday({
                     field: document.getElementById('txtDob'),
                     firstDay: 1,
                     minDate: new Date('2000-01-01'),
                     maxDate: new Date(),
                     yearRange: [2000, 2020],
                     numberOfMonths: 1
                 });
             </script>
        </div>
                              <div class="txtb" style="height:47px;">
                              <asp:TextBox ID="txtMail" type="text"  onblur="validateEmail(this);" runat="server" AutoCompleteType="Disabled" Font-Size="15px" ForeColor="#333" BorderStyle="None" BorderWidth="0px" style="padding:0 5px;height:40px;background:none;width:100%;" value="" ></asp:TextBox>            
            <span data-placeholder="Email"></span>
                                  <script>
                                      function validateEmail(txtMail) {
                                          var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
                                          
                                          
                                          if (reg.test(txtMail.value) == false) {
                                              alert('Invalid Email');
                                              return false;
                                              
                                              
                                          }
                                          
                                          return true;

                                      }
                                  </script>
        </div>
                                               <div class="txtb" style="height:47px;">
                              <asp:TextBox ID="txtPin" runat="server" TextMode="Password" Font-Size="15px" ForeColor="#333" BorderStyle="None" BorderWidth="0px" style="padding:0 5px;height:40px;background:none;width:100%;"></asp:TextBox>            
            <span data-placeholder="Security Pin"></span>
        </div>
          

        

        <asp:Button ID="Submit" runat="server" Text="SignUp" class="logbtn" OnClick="Submit_Click"  />        <div class="bottom-text">
            Don't have digital Locker account?<a href="Login.aspx">SignIn</a>
        </div>
<div>
    <asp:Label ID="check" runat="server" Text="" Width="100%"></asp:Label></div>
   

                          </form>
        
                          
                          
                          <br />
        
                          
                          
                        </div>
                      

                </div>

        </div>
            

       </div>
            </div>
        </div>
    

    
   
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

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dash.aspx.cs" Inherits="pcuDE.Dash" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Profile</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=0.5,maximum-scale=1.0"/>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous" />
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous">

    </script>
    <script src="https://kit.fontawesome.com/b99e675b6e.js"></script>
    <link rel="stylesheet" href="dash.css" />
     <link rel="stylesheet" href="login.css" />
   

  
   

    
   

  
   

    <style type="text/css">
        .auto-style1 {
            margin-left: 160px;
        }
        .auto-style2 {
            float: left;
            background-color: rgba(0,0,0,0.05);
            height: 490px;
            width: 40%;
            margin-left: 5px;
            margin-bottom: 5px;
            text-align: center;
        }
        .auto-style3 {
            margin-left: 5px;
        }
        .auto-style4 {
            width: 100%;
            height: 362px;
            margin-top: 0px;
        }
        .auto-style5 {
            height: 25px;
            text-align: center;
        }
        .auto-style6 {
            height: 119px;
            text-align: center;
        }
        </style>
   

  
   

    
   

  
   

    </head>
<body>
   <div>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
         <button class="navbar-toggler sideMenuToggler" type="button">
              <span class="navbar-toggler-icon"></span>
          </button>
   <img width="195" height="60" src="slider/updated.png" style="margin-bottom:3px;border-radius:15px;" />
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav ml-auto">
      
      
      <li class="nav-item dropdown">
                 
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              <asp:Label ID="name" runat="server" Text="" Font-Bold="true" ForeColor="Red"></asp:Label>
          
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown" style="width:20px;">
          <a class="dropdown-item" href="Dash.aspx">Info</a>
          
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="Login.aspx" >LogOut</a>
        </div>
      </li>
     
    </ul>
   
  </div>
</nav>
   </div>
   <form id="ImageForm" runat="server">
    <div class="main_block" >
        <div class="left_block" >
           <div class="sidebar">
               <ul>
                   <li><a href="Dash.aspx" style="border-right-style:none;"><i class="fas fa-user"></i>Profile</a></li>
                   <li><a href="DecryptActivity.aspx" style="border-right-style:none;"><i class="fas fa-address-card"></i>Issued Document</a></li>
                   <li><a href="Activity.aspx" style="border-right-style:none;"><i class="fas fa-project-diagram"></i>Uploaded Document</a></li>
                   <li><a href="#" style="border-right-style:none;"><i class="fas fa-info"></i>Project Info</a></li>
               </ul>
               <div class="social_media">
                   <a href="#"><i class="fab fa-facebook-f"></i></a>
                   <a href="#"><i class="fab fa-twitter"></i></a>
                   
               </div>
           </div>

        </div>
        <div class="right_block">
            <div style="background-color:black;height:40px;margin-top:5px;">
                <div style="background-color:red;height:35px"><p style="color:white;font-size:20px;margin-top:5px;">&nbsp &nbsp &nbsp &nbsp Digital Locker Profile</p></div>
            </div>
            <div style=" background-color:white; margin-right:5px; margin-left:5px; margin-top:5px;height:500px;display:block;" >
               
                   <div class="auto-style2">
                   
                        
                        <br />
                        <br />
                        <br />
                   
                        
                       
                       
                    

                        <div style="margin-top:5px;" class="auto-style3">

                            <table class="auto-style4">
                                <tr>
                                    <td class="auto-style6">
                                        <asp:Image ID="ProfileImage" runat="server" style="border-radius:10px;" /></td>
                                </tr>
                                <tr>
                                    <td class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:FileUpload ID="FileUploadImage" runat="server" /></td>
                                </tr>
                                 <tr>
                                    <td class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Check" runat="server" Text=""></asp:Label></td>
                                </tr>
                                
                               
                            </table>
                          

                            
                        
                            
                    </div>
                    
                   
                </div>
              <div class="Left-Block">
                  
                      <h5>&nbsp;</h5>
                      <h5>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </h5>
                      <h5 class="auto-style1">Username</h5>
                  <p><asp:TextBox ID="txtUser" runat="server" CssClass="offset-sm-0" ForeColor="#66CCFF" Height="41px" Width="290px" BorderStyle="None" ReadOnly="True"></asp:TextBox></p>
                  <h5 class="auto-style1">Date of Birth</h5>
                  <p><asp:TextBox ID="txtDob" runat="server" ForeColor="#66CCFF" Height="41px" Width="290px" BorderStyle="None" ReadOnly="True"></asp:TextBox></p>
                  <h5 class="auto-style1">Email</h5>
                  <p><asp:TextBox ID="txtEmail" runat="server" ForeColor="#66CCFF" Height="40px" Width="290px" BorderStyle="None" ReadOnly="True"></asp:TextBox></p>
                  <h5 class="auto-style1">Mobile no</h5>
                  <p><asp:TextBox ID="txtMobile" runat="server" ForeColor="#66CCFF" Height="41px" Width="290px" BorderStyle="None"></asp:TextBox></p>
                  <p><asp:Button ID="btnUpdate" runat="server" Text="UPDATE" Height="41px" Width="98px" style="border-radius:5px;background-color:rgb(0, 148, 255);" OnClick="btnUpdate_Click" /></p>
                  
                  
              </div>
                   
                   
             


             
            </div>
        </div>

    </div>
       </form>
    
    
</body>
</html>

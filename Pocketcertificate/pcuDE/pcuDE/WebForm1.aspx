<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="pcuDE.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
            <meta charset="utf-8"/>
            <meta name="viewport" content="width=device-width, initial-scale=1"/>
    
            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
            
            <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous"/>
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="demo.css" />
    <style type="text/css">
        .auto-style1 {
            margin-left: 397px;
        }

        .auto-style2 {
            height: 95px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="mainBody">
            <div class="MenuBar " >
                
                <nav class="navbar-fixed-top" style="background-color: #000000;padding-top:10px;height:40px;" >
                    <div class="container">
                        
                        
                        <ul style="align-content:center" class="auto-style1">
                            <li><a href="javascript:;" style="text-decoration:none;cursor:pointer;" title="Home"><i class="fa fa-home"></i><span></span></a></li>
                            <li><a href="javascript:;" style="text-decoration:none;" title="Info"><i class="fa fa-info-circle"></i><span></span> </a></li>
                            <li><a href="javascript:;" style="text-decoration:none;" title="Contact"><i class="fa fa-phone-square"></i><span></span></a></li>
                            <li><a href="javascript:;" style="text-decoration:none;" title="About Us"><i class="fa fa-user-circle"></i><span></span></a></li>
                            <li><a href="Login.aspx" style="text-decoration:none;" title="Login 1st"><i class="fa fa-registered"></i><span></span></a></li>
                        </ul>
                        <p style="color:white;text-align:end;color:red;font-weight:bold;"> Date/Time:<span id="datetime" style="color:white;"><script>
                                                                                                                                                  function showTime() {
                                                                                                                                                      var date = new Date();
                                                                                                                                                      var day = date.toDateString();
                                                                                                                                                      var h = date.getHours();
                                                                                                                                                      var m = date.getMinutes();
                                                                                                                                                      var s = date.getSeconds();
                                                                                                                                                      var session = "AM";
                                                                                                                                                      if (h == 0) {
                                                                                                                                                          h = 12;

                                                                                                                                                      }
                                                                                                                                                      if (h > 12) {
                                                                                                                                                          h = h - 12;
                                                                                                                                                          session = "PM";
                                                                                                                                                      }
                                                                                                                                                      h = (h < 10) ? "0" + h : h;
                                                                                                                                                      m = (m < 10) ? "0" + m : m;
                                                                                                                                                      s = (s < 10) ? "0" + s : s;

                                                                                                                                                      var time = day + "  " + h + ":" + m + ":" + s + " " + session;
                                                                                                                                                      document.getElementById('datetime').innerText = time;
                                                                                                                                                      document.getElementById('datetime').textContent = time;
                                                                                                                                                      setTimeout(showTime, 1000);


                                                                                                                                                  }
                                                                                                                                                  showTime();


                                                                                                    </script></span></p>
                        
                    </div>
                </nav>
                
            </div>

            <div class="Image">
                <img src="slider/large new.png" alt="Icon" />
            </div>
            <br />
            <br />
             <div class="sliderBar">
                 <div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="2000">
  <!-- Indicators -->
                    <ol class="carousel-indicators" >
    <li data-target="#myCarousel" data-slide-to="0" class="active" style="background-color:red;border-color:black;"></li>
    <li data-target="#myCarousel" data-slide-to="1" style="background-color:red;border-color:black;"></li>
    <li data-target="#myCarousel" data-slide-to="2" style="background-color:red;border-color:black;"></li>
    <li data-target="#myCarousel" data-slide-to="3" style="background-color:red;border-color:black;"></li>
    <li data-target="#myCarousel" data-slide-to="4" style="background-color:red;border-color:black;"></li>
    
  </ol>
  

  <!-- Wrapper for slides -->
  <div class="carousel-inner">
    <div class="item active" >
      <img src="slider/img4.jpg" alt="Digital Locker"/>
        
    </div>
      <div class="item">
      <img src="slider/security.png" alt="Group Study" "/>
    </div>

      <div class="item">
      <img src="slider/group.jpg" alt="Group Study" "/>
    </div>

    <div class="item">
      <img src="slider/img1.jpg" alt="Group Study" "/>
    </div>

    <div class="item">
      <img src="slider/img2.jpg" alt="Mobile Image"/>
    </div>
      
  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" data-slide="prev" style="color:red; right: 1147px;">
    <span class="glyphicon glyphicon-chevron-left"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" data-slide="next" style="color:red">
    <span class="glyphicon glyphicon-chevron-right"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
           
        </div>
            <br />
            <div class="col-md-12  col-sm-12 hidden-xs panelsrow ">
                <div class="containData">
                    <p class="sectionHeader" style="text-align:center;color:white;">
                        How it work?
                    </p>
                    <div>
                        <div class="col-md-1 col-sm-1"></div>
                        <div class="col-md-2 col-sm-2 text-center">
                           <div class="profile-circle arrow-next hovering">
                               <i class="fa fa-user-circle icon-border" aria-hidden="true">

                               </i>
                           </div>
                            <p style="color:white;">
                                "SignUp"
                                <br />
                                "with User Data"
                                <br />
                            </p>
                          
                            
                        </div>
                        <div class="col-md-2 col-sm-2 text-center">
                           <div class="profile-circle arrow-next hovering">
                               <img src="working/blue-up-file-circle-document-upload-icon-23.png" class="icon-border" style="padding: .1em .1em;"/>

                               
                           </div>
                            <p style="color:white;">
                                "Upload"
                                <br />
                                "An Image"
                                <br />
                                <br />
                            </p>
                          
                            
                        </div>
                        <div class="col-md-2 col-sm-2 text-center">
                           <div class="profile-circle arrow-next hovering">
                               <img src="working/874902_email_512x512.png" class="icon-border" style="padding: .1em .1em;"/>
                           </div>
                            <p style="color:white;">
                                "Get Verified mail"
                                <br />
                                "With Username"
                                <br />
                                "& Password"
                                <br />
                            </p>
                          
                            
                        </div>
                        <div class="col-md-2 col-sm-2 text-center">
                           <div class="profile-circle arrow-next hovering">
                               <img src="working/Data-encryption-key-personal-512.png" class="icon-border" style="padding: .1em .1em;background-color:white;"/>
                           </div>
                            <p style="color:white;">
                                "Use Encrypted"
                                <br />
                                "Key to secure "
                                <br />
                                "Document"
                                <br />
                            </p>
                          
                            
                        </div>
                        <div class="col-md-2 col-sm-2 text-center">
                           <div class="profile-circle hovering">
                               <img src="working/confirm icon.png" class="icon-border" style="padding: .1em .1em;background-color:white;"/>
                           </div>
                            <p style="color:white;">
                                "Document Verifed"
                                <br />
                                "br requesters"
                                <br />
                                
                            </p>
                          
                            
                        </div>
                        

                        <div>

                        </div>
                    </div>

                </div>

            </div>
           <br />
            <br />
          
            <div class="col-md-12 col-sm-12 hidden-xs bgsignup">
                <div class="containData2">
                    <div>
                        <br />
                        <strong>
                            <p class="text-center dwn">
                                Digital Locker is a secure cloud based platform for storage, sharing and verification of documents & certificates.
                            <br />
                            <a href="#">
                                <button class="btn ovalbtn1 trbtn" style="font-size: 16px;margin-top: 0px;background-color: #fff;color: #2980B9;border-radius: 22px;border: 1px solid #707070;box-shadow: 0 2px 5px rgba(0, 0, 0, 0.4);">Sign Up Now</button>
                            </a>

                            </p>
                        </strong>
                    </div>
                    
                </div>
            </div>
            </div>
      

    </form>
</body>
</html>

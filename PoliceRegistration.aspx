<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PoliceRegistration.aspx.cs" Inherits="PoliceRegistration" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
   	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Start your development with Creative Studio landing page.">
    <meta name="author" content="Devcrud">
    <title>Creative Studio | Free Bootstrap 4.3.x template</title>

    <!-- font icons -->
    <link rel="stylesheet" href="assets/vendors/themify-icons/css/themify-icons.css">

    <!-- Bootstrap + Creative Studio main styles -->
	<link rel="stylesheet" href="assets/css/creative-studio.css">
        <script type="text/javascript">
            function isNumberKey(evt) {
                var charCode = (evt.which) ? evt.which : evt.keyCode;
                // Allow digits, backspace, delete
                if (charCode === 8 || charCode === 46) return true;
                if (charCode >= 48 && charCode <= 57) return true;
                return false;
            }

            function isLetterKey(evt) {
                var charCode = (evt.which) ? evt.which : evt.keyCode;
                // Allow A-Z, a-z, space, backspace
                if (charCode === 8 || charCode === 32) return true;
                if ((charCode >= 65 && charCode <= 90) || (charCode >= 97 && charCode <= 122)) return true;
                return false;
            }
</script>
    
</head>
<body data-spy="scroll" data-target=".navbar" data-offset="40" id="home">
    
    <!-- Page Navigation -->
      <!-- Page Navigation -->
     <nav class="navbar custom-navbar navbar-expand-lg navbar-dark" data-spy="affix" data-offset-top="20">
        <div class="container">
            <a class="navbar-brand" href="#">
                <img src="assets/imgs/logo.png" alt="Download free bootstrap 4 landing page, free boootstrap 4 templates, Download free bootstrap 4.1 landing page, free boootstrap 4.1.1 templates, Creative studio Landing page">
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="Homepage.aspx">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="PetitionerRegistration.aspx">Petioner Registration</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="AdvocateRegistration.aspx">Advocate Registration</a>
                    </li>
                     <li class="nav-item">
                        <a class="nav-link" href="PoliceRegistration.aspx">Police Registration</a>
                    </li>
                    <%--<li class="nav-item">
                        <a class="nav-link" href="#portfolio">Gallery</a>
                    </li>--%>
                    <%--<li class="nav-item">
                        <a class="nav-link" href="#team">Advocate</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#testimonial">Petitioner</a>
                    </li>--%>
                    <%--<li class="nav-item">
                        <a class="nav-link" href="#blog">Blog</a>
                    </li>--%>
                    <%--<li class="nav-item">
                        <a class="nav-link" href="#contact">Contact</a>
                    </li>--%>
                   <%-- <li class="nav-item">
                        <a class="nav-link btn btn-primary btn-sm ml-lg-3" href="components.html">Components</a>
                    </li>--%>
                </ul>
            </div>
        </div>
    </nav>
    <!-- End Of Page Navigation -->

    <!-- Page Header -->
     <header class="header">
        <div class="overlay">
           <%-- <h6 class="subtitle">Small Team With Big Ideas</h6>--%>
            <h1 class="title">Fighting For Justice</h1>
            <%--<div class="buttons text-center">
                <a href="#service" class="btn btn-primary rounded w-lg btn-lg my-1">Our Service</a>
                <a href="#contact" class="btn btn-outline-light rounded w-lg btn-lg my-1">Contact Us</a>
            </div>  --%>            
        </div>      
    </header>
    <!-- End Of Page Header -->

    <!-- Box -->
    <div class="box text-center">
        <div class="box-item">
            <i class=""></i>
            <a href="PoliceRegistration.aspx"><h6 class="box-title">Police Registration</h6></a>
            <p>A officer is a law enforcement professional who works in courtrooms to enforce laws and courtroom regulations.</p>
        </div>
        <div class="box-item">
            <i class=""></i>
           <a href="AdvocateRegistration.aspx"><h6 class="box-title">Advocate Registration</h6></a>
            <p>An advocate is a professional that speaks and advocates for a particular category of person, such as a customer, a victim, a child or a patient.</p>
        </div>
        <div class="box-item">
            <i class=""></i>
           <a href="PetitionerRegistration.aspx"><h6 class="box-title">Petitioner Registration</h6></a>
            <p>A petitioner is a person who pleads with governmental institution for a legal remedy or a redress of grievances, through use of a petition.</p>
        </div>
    </div>
 
    <section id="about">
        <div class="container">
          

    <form id="form1" runat="server">
    <div>
     <div style="Width:1300px;text-align:left;padding-left: 200px;">
     
         <asp:Label ID="Label8" runat="server" Font-Bold="True" ForeColor="BlueViolet" Font-Size = "X-Large"
            Text="Police Registration"></asp:Label>
        <br />
         <br />
          <asp:Label ID="Label3" runat="server" Text="Username:" Font-Bold="False" 
             Font-Names="Arial" Font-Size="Medium"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox1" runat="server" Height="26px" Width="225px"></asp:TextBox> &nbsp;&nbsp;&nbsp;<asp:Label ID="lblmsg" runat="server"></asp:Label>
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label15" runat="server" 
             Text="Gender:" Font-Names="Arial" Font-Size="Medium"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList6" 
                 runat="server" Width="225px" Height="29px" ></asp:DropDownList>
         <br />
         <br />
        <asp:Label ID="Label14" runat="server" Text="Name:" Font-Names="Arial" 
             Font-Size="Medium"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox8" runat="server"  Height="26px" Width="225px"  onkeypress="return isLetterKey(event);"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    <asp:RegularExpressionValidator 
ID="NameValidator" 
runat="server" 
ControlToValidate="TextBox8"
ErrorMessage="Enter only letters and spaces." 
ForeColor="Red"
ValidationExpression="^[A-Za-z ]+$" 
Display="Dynamic" />  <asp:Label ID="Label16" 
             runat="server" Text="Contact No:" Font-Names="Arial" Font-Size="Medium"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox10" runat="server"  Height="26px" Width="225px" onkeypress="return isNumberKey(event);" ></asp:TextBox>
                   <asp:RegularExpressionValidator 
ID="PhoneValidator" 
runat="server" 
ControlToValidate="TextBox10"
ErrorMessage="Please enter a valid phone number." 
ForeColor="Red"
ValidationExpression="^\(?\d{3}\)?[-.\s]?\d{3}[-.\s]?\d{4}$" 
Display="Dynamic" />
             <br />
         <br />

        <asp:Label ID="Label4" runat="server" Text="Email ID:" Font-Names="Arial" 
             Font-Size="Medium"></asp:Label>
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox2" runat="server"  Height="26px" Width="225px"></asp:TextBox>
         <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label17" runat="server" 
             Text="DOB:" Font-Names="Arial" Font-Size="Medium"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList7" 
                 runat="server" Width="65px" Height="29px" ></asp:DropDownList><asp:DropDownList ID="DropDownList8" 
                 runat="server" Width="65px" Height="29px"></asp:DropDownList><asp:DropDownList ID="DropDownList9" 
                 runat="server" Width="95px" Height="29px"></asp:DropDownList>
         <br />
         <br />
         
        <asp:Label ID="Label5" runat="server" Text="Password:" Font-Names="Arial" 
             Font-Size="Medium"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox3" runat="server" Height="26px" Width="225px" TextMode="Password"></asp:TextBox>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
         <asp:Label ID="Label18" 
             runat="server" Text="Location:" Font-Names="Arial" 
             Font-Size="Medium"></asp:Label>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList10" 
                 runat="server" Width="225px" Height="29px">
             </asp:DropDownList>
        <br />
         <br />
        <asp:Label ID="Label7" runat="server" Text="Confirm Password:" 
             Font-Names="Arial" Font-Size="Medium"></asp:Label>
       <asp:TextBox ID="TextBox5" runat="server" Width="225px"  Height="26px" TextMode="Password"></asp:TextBox> 
       &nbsp;&nbsp;&nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" 
                 ControlToCompare="TextBox3" ControlToValidate="TextBox5" ErrorMessage="*" 
                 ForeColor="Red"></asp:CompareValidator>
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label19" runat="server" 
             Text="Police Officer ID No:" Font-Names="Arial" Font-Size="Medium"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox11" runat="server"  Height="26px" Width="225px" ></asp:TextBox>
             <br />
         <br />      
       <asp:Label ID="Label10" runat="server" Text="Address:" Font-Names="Arial" 
             Font-Size="Medium"></asp:Label>
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox7" 
                 runat="server" Width="225px" Height="40px" TextMode="MultiLine"></asp:TextBox>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <asp:Label ID="Label1" runat="server" Text="Police Officer Code:" Font-Names="Arial" 
             Font-Size="Medium"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox 
             ID="TextBox4" runat="server" Height="26px" Width="225px" Enabled="False" ></asp:TextBox> 
        <br />
        <br />
        
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button 
                 ID="Button3" runat="server" Height="42px" Text="Submit" class="btn btn-primary w-md" onclick="Button1_Click"  
        Width="170px"/> &nbsp;&nbsp;<asp:Button ID="Button4" 
                 runat="server" Height="42px" Text="Cancel"   
        Width="170px" class="btn btn-primary w-md" onclick="Button2_Click"/>
        
        <br />
        <br />
         <asp:Label ID="Label11" runat="server" Visible="False"></asp:Label>
          </div>
    </div>
    </form>
          </div>
    </section>
    <!-- End of About Section -->


   <section class="has-bg-img py-0">
        <div class="container">
            <div class="footer">
                <div class="footer-lists">
                    <ul class="list">
                        <li class="list-head">
                            <h6 class="font-weight-bold">ABOUT US</h6>
                        </li>
                        <li class="list-body">
                            <a href="#" class="logo">
                                <img src="assets/imgs/logo.png" alt="Download free bootstrap 4 landing page, free boootstrap 4 templates, Download free bootstrap 4.1 landing page, free boootstrap 4.1.1 templates, Creative studio Landing page">
                                <h6>Judisary System</h6>
                            </a>
                          <%--  <p>The Indian Judicial system is managed and administrated by officers of judicial service, those intended to fill the post of district judge</p> --%>
                            <p class="mt-3">
                                Copyright <script>                                              document.write(new Date().getFullYear())</script> &copy; <a class="d-inline text-primary" href="#"></a>
                            </p>                   
                        </li>
                    </ul>
                    <ul class="list">
                        <li class="list-head">
                            <h6 class="font-weight-bold">USEFUL LINKS</h6>
                        </li>
                        <li class="list-body">
                            <div class="row">
                               <%-- <div class="col">
                                    <a href="#about">About</a>
                                    <a href="#service">Service</a>
                                    <a href="#portfolio">Portfolio</a>
                                    <a href="#testmonail">Testimonial</a>
                                </div>--%>
                                <div class="col">
                                    <a href="PoliceRegistration.aspx">Court officer Registration</a>
                                    <a href="PetitionerRegistration.aspx">Petitioner Registration</a>
                                    <a href="AdvocateRegistration.aspx">Advocate Registration</a>
                                    <%--<a href="#">Privacy Policy</a>    --%>              
                                </div>
                            </div>
                        </li>
                    </ul>
                    <ul class="list">
                        <li class="list-head">
                            <h6 class="font-weight-bold">CONTACT INFO</h6>
                        </li>
                        <li class="list-body">
                            <%--<p>Contact us and we'll get back to you within 24 hours.</p>--%>
                            <p><i class="ti-location-pin"></i> 203 Fake St. Mountain View, New Delhi, INDIA</p>
                            <p><i class="ti-email"></i>  info@judisary.com</p>
                            <div class="social-links">
                                <a href="javascript:void(0)" class="link"><i class="ti-facebook"></i></a>
                                <a href="javascript:void(0)" class="link"><i class="ti-twitter-alt"></i></a>
                                <a href="javascript:void(0)" class="link"><i class="ti-google"></i></a>
                                <a href="javascript:void(0)" class="link"><i class="ti-pinterest-alt"></i></a>
                                <a href="javascript:void(0)" class="link"><i class="ti-instagram"></i></a>
                                <a href="javascript:void(0)" class="link"><i class="ti-rss"></i></a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>    
        </div>
    </section>


    <!-- core  -->
    <script src="assets/vendors/jquery/jquery-3.4.1.js"></script>
    <script src="assets/vendors/bootstrap/bootstrap.bundle.js"></script>

    <!-- bootstrap affix -->
    <script src="assets/vendors/bootstrap/bootstrap.affix.js"></script>

    <!-- Creative Studio js -->
    <script src="assets/js/creative-studio.js"></script>

 
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PetitionerRequestAdvocate.aspx.cs" Inherits="PetitionerRequestAdvocate" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
        <meta charset="UTF-8">
        <title>AdminLTE | Dashboard</title>
        <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
        <!-- bootstrap 3.0.2 -->
        <link href="css1/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <!-- font Awesome -->
        <link href="css1/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <!-- Ionicons -->
        <link href="css1/ionicons.min.css" rel="stylesheet" type="text/css" />
        <!-- Morris chart -->
        <link href="css1/morris/morris.css" rel="stylesheet" type="text/css" />
        <!-- jvectormap -->
        <link href="css1/jvectormap/jquery-jvectormap-1.2.2.css" rel="stylesheet" type="text/css" />
        <!-- fullCalendar -->
        <link href="css1/fullcalendar/fullcalendar.css" rel="stylesheet" type="text/css" />
        <!-- Daterange picker -->
        <link href="css1/daterangepicker/daterangepicker-bs3.css" rel="stylesheet" type="text/css" />
        <!-- bootstrap wysihtml5 - text editor -->
        <link href="css1/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css" rel="stylesheet" type="text/css" />
        <!-- Theme style -->
        <link href="css1/AdminLTE.css" rel="stylesheet" type="text/css" />

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->
        
</head>
<body class="skin-blue">
        <!-- header logo: style can be found in header.less -->
      <header class="header">
            <a href="#" class="logo">
                <!-- Add the class icon to your logo image or logo icon to add the margining -->
                Petitioner DashBoard
            </a>
            <!-- Header Navbar: style can be found in header.less -->
            <nav class="navbar navbar-static-top" role="navigation">
                <!-- Sidebar toggle button-->
                <a href="#" class="navbar-btn sidebar-toggle" data-toggle="offcanvas" role="button">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </a>
                <div class="navbar-right">
                    
                       
                </div>
            </nav>
        </header>
        <div class="wrapper row-offcanvas row-offcanvas-left">
            <!-- Left side column. contains the logo and sidebar -->
            <aside class="left-side sidebar-offcanvas">
                <!-- sidebar: style can be found in sidebar.less -->
               <section class="sidebar">
                    <!-- Sidebar user panel -->
                    <div class="user-panel">
                        <%--<div class="pull-left image">
                            <img src="img/avatar3.png" class="img-circle" alt="User Image" />
                        </div>--%>
                        </br>
                        <div class="pull-left info">
                            <p>Hello,<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label> </p>

                         <%--   <a href="#"><i class="fa fa-circle text-success"></i> Online</a>--%>
                        </div>
                    </div>
                    <!-- search form -->
                    <form action="#" method="get" class="sidebar-form">
                        <div class="input-group">
                            <input type="text" name="q" class="form-control" placeholder="Search..."/>
                            <span class="input-group-btn">
                                <button type='submit' name='seach' id='search-btn' class="btn btn-flat"><i class="fa fa-search"></i></button>
                            </span>
                        </div>
                    </form>
                    <!-- /.search form -->
                    <!-- sidebar menu: : style can be found in sidebar.less -->
                   <ul class="sidebar-menu">
                        <li class="active">
                            <a href="PetitionerHomePage.aspx">
                                <i class="fa fa-dashboard"></i> <span>HomePage</span>
                            </a>
                        </li>
                        <li class="active">
                            <a href="PetitionerFilePetition.aspx">
                                <i class="fa fa-laptop"></i>
                                <span>File Incident</span>
                            </a>       
                        </li>
                        <li class="active"> 
                            <a href="PetitionerPetitionStatus.aspx">
                                <i class="fa fa-laptop"></i>
                                <span>Incident Status</span>
                            </a>       
                        </li>
                        <li class="active">
                            <a href="PetitionerRequestAdvocate.aspx">
                                <i class="fa fa-laptop"></i>
                                <span>Assign Advocate</span>
                            </a>       
                        </li>
                        <li class="active">
                            <a href="PetitionerViewCaseStatus.aspx">
                                <i class="fa fa-bar-chart-o"></i>
                                <span>Case Status</span>
                            </a>       
                        </li>
                         <li class="active"> 
                            <a href="PetitionerEvakalathu.aspx">
                                <i class="fa fa-laptop"></i>
                                <span>Evakalathu</span>
                            </a>       
                        </li>
                         <li class="active"> 
                            <a href="PetitionerAdvocateHistory.aspx">
                                <i class="fa fa-laptop"></i>
                                <span>Advocate History</span>
                            </a>       
                        </li>
                          <li class="active">
                            <a href="PetitionerViewHearing.aspx">
                                <i class="fa fa-laptop"></i>
                                <span>Hearing Details</span>
                            </a>       
                        </li>
                        <li class="active">
                            <a href="PetitionerMail.aspx">
                                <i class="fa fa-bar-chart-o"></i>
                                <span>MailBox</span>
                            </a>       
                        </li>
                       
                       <li class="active">
                            <a href="PetitionerMailCompose.aspx">
                                <i class="fa fa-bar-chart-o"></i>
                                <span>Compose</span>
                            </a>       
                        </li>
                        <li>
                            <a href="HomePage.aspx">
                                <i class="fa fa-envelope"></i> <span>Sign Out</span>
                             <%--   <small cass="badge pull-right bg-yellow"></small>--%>
                            </a>
                        </li>
                       
                    </ul>
                </section>
                <!-- /.sidebar -->
            </aside>

            <!-- Right side column. Contains the navbar and content of the page -->
            <aside class="right-side">                
                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <h1>
                       <%-- Data Tables--%>
                       <%-- <small>advanced tables</small>--%>
                    </h1>
                    <%--<ol class="breadcrumb">
                        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
                        <li><a href="#">Tables</a></li>
                        <li class="active">Data tables</li>
                    </ol>--%>
                </section>
                <form id="form1" runat="server">
                <!-- Main content -->
                <section class="content">
                    <div class="row">
                        <div class="col-xs-12">
                            <%--<div class="box">
                                <div class="box-header">
                                </div><!-- /.box-header -->
                                <!-- /.box-body -->
                            </div><!-- /.box -->--%>
                            
    <div class="box">
                                <div class="box-header">
                                    <h3 class="box-title">Assign Advocate for Cases</h3>                                    
                                </div><!-- /.box-header -->
                                 
                                <div class="box-body table-responsive">
                                
                          <div style="Width:1000px;text-align:left;padding-left: 20px;">
     
         
        
        <br />
                         &nbsp;&nbsp;&nbsp;       
                              <asp:Label ID="Label18" runat="server" 
             Text="Petition ID:" Font-Names="Arial" Font-Size="Medium"></asp:Label>
                              <asp:DropDownList ID="DropDownList4" 
                 runat="server" Width="225px" Height="29px" AutoPostBack="True" 
                                  onselectedindexchanged="DropDownList4_SelectedIndexChanged">
             </asp:DropDownList>
              <br />
         <br />
         <br />
          <asp:Label ID="Label3" runat="server" Text="Incident ID:" Font-Bold="False" 
             Font-Names="Arial" Font-Size="Medium"></asp:Label>
                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox 
                                  ID="TextBox1" runat="server" Height="26px" Width="225px" Enabled="False"></asp:TextBox> &nbsp;&nbsp;&nbsp;
                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
         <br />
                              <asp:Label ID="Label13" runat="server" 
             Text="Username" Font-Names="Arial" Font-Size="Medium"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox17" runat="server"  Height="26px" 
                                  Width="225px" Enabled="False"></asp:TextBox>
             
                              &nbsp;&nbsp;&nbsp;  
                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                 ErrorMessage="*" ForeColor="#FF5050" ControlToValidate="TextBox10"></asp:RegularExpressionValidator>--%>
             
             <br />
         <br />

        <asp:Label ID="Label4" runat="server" Text="File Date" Font-Names="Arial" 
             Font-Size="Medium"></asp:Label>
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox2" runat="server"  Height="26px" 
                                  Width="225px" Enabled="False"></asp:TextBox>
         
     &nbsp;&nbsp;&nbsp; 
                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
         <br />
        <asp:Label ID="Label9" runat="server" Text="Incident Area:" Font-Names="Arial" 
             Font-Size="Medium"></asp:Label>
        &nbsp;&nbsp;<asp:TextBox ID="TextBox6" runat="server"  Height="26px" Width="225px" Enabled="False" ></asp:TextBox>
        &nbsp;&nbsp;&nbsp; 
                              &nbsp;<%--<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                 ErrorMessage="*" ForeColor="#FF5050" ControlToValidate="TextBox10"></asp:RegularExpressionValidator>--%><br />
         <br />

        <asp:Label ID="Label12" runat="server" Text="Incident Date:" Font-Names="Arial" 
             Font-Size="Medium"></asp:Label>
       &nbsp;&nbsp;<asp:TextBox ID="TextBox7" runat="server"  Height="26px" Width="225px" Enabled="False"></asp:TextBox>
         
     &nbsp;&nbsp;&nbsp; 
                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
         <br />
        <asp:Label ID="Label20" runat="server" Text="Incident Details" 
             Font-Names="Arial" Font-Size="Medium"></asp:Label>
               <asp:TextBox 
                                  ID="TextBox14" runat="server" Width="350px"  Height="206px" 
                                  TextMode="MultiLine" Enabled="False"></asp:TextBox> 
       &nbsp;&nbsp;&nbsp;
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
         <br />      
                             
                        
                              <asp:Label ID="Label23" 
             runat="server" Text="Assign Advocate" Font-Names="Arial" Font-Size="Medium"></asp:Label>
                              <asp:DropDownList ID="DropDownList6" 
                 runat="server" Width="225px" Height="29px" AutoPostBack="True" 
                                  onselectedindexchanged="DropDownList3_SelectedIndexChanged">
             </asp:DropDownList>
                 <br />
         <br />         
             <br /> 
          &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button 
                 ID="Button3" runat="server" class="btn btn-primary w-md" Height="32px" Text="Request" onclick="Button3_Click"  
        Width="110px"/> &nbsp;&nbsp;<asp:Button ID="Button4" 
                 runat="server" class="btn btn-primary w-md" Height="32px" Text="Close"   
        Width="112px" onclick="Button2_Click"/>
        
        <br />
        <br />
         <asp:Label ID="Label11" runat="server" Visible="False" ForeColor="Red"></asp:Label>
          </div>
                           </div>           
                                </div>
                        </div>
                    </div>

                </section><!-- /.content -->
                </form>
            </aside><!-- /.right-side -->
        </div><!-- ./wrapper -->
          
        <!-- add new calendar event modal -->


        <!-- jQuery 2.0.2 -->
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
        <!-- jQuery UI 1.10.3 -->
        <script src="js/jquery-ui-1.10.3.min.js" type="text/javascript"></script>
        <!-- Bootstrap -->
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <!-- Morris.js charts -->
        <script src="//cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
        <script src="js/plugins/morris/morris.min.js" type="text/javascript"></script>
        <!-- Sparkline -->
        <script src="js/plugins/sparkline/jquery.sparkline.min.js" type="text/javascript"></script>
        <!-- jvectormap -->
        <script src="js/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js" type="text/javascript"></script>
        <script src="js/plugins/jvectormap/jquery-jvectormap-world-mill-en.js" type="text/javascript"></script>
        <!-- fullCalendar -->
        <script src="js/plugins/fullcalendar/fullcalendar.min.js" type="text/javascript"></script>
        <!-- jQuery Knob Chart -->
        <script src="js/plugins/jqueryKnob/jquery.knob.js" type="text/javascript"></script>
        <!-- daterangepicker -->
        <script src="js/plugins/daterangepicker/daterangepicker.js" type="text/javascript"></script>
        <!-- Bootstrap WYSIHTML5 -->
        <script src="js/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js" type="text/javascript"></script>
        <!-- iCheck -->
        <script src="js/plugins/iCheck/icheck.min.js" type="text/javascript"></script>

        <!-- AdminLTE App -->
        <script src="js/AdminLTE/app.js" type="text/javascript"></script>
        
        <!-- AdminLTE dashboard demo (This is only for demo purposes) -->
        <script src="js/AdminLTE/dashboard.js" type="text/javascript"></script>     
        
        <!-- AdminLTE for demo purposes -->
        <script src="js/AdminLTE/demo.js" type="text/javascript"></script>

    
  
</body>
</html>

<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AdminHome1.aspx.cs" Inherits="AdminHome1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
     
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       <section class="content">

       <!-- Small boxes (Stat box) -->
       <div class="row">
           <div class="col-lg-3 col-xs-6">
               <!-- small box -->
               <div class="small-box bg-aqua">
                   <div class="inner">
                       <h3>
                           <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                       </h3>
                       <p>
                           Total Cases
                       </p>
                   </div>
                   <div class="icon">
                       <img src="img/113.png"  width="78" height="83" style="margin-top:10px ; margin-right:18px">
<%--                       <i class="ion ion-bag"></i>--%>
                   </div>
                   <%--<a href="#" class="small-box-footer">
                       More info <i class="fa fa-arrow-circle-right"></i>
                   </a>--%>
               </div>
           </div><!-- ./col -->
           <div class="col-lg-3 col-xs-6">
               <!-- small box -->
               <div class="small-box bg-green">
                   <div class="inner">
                       <h3>
                         <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>  <sup style="font-size: 20px"></sup>
                       </h3>
                       <p>
                           Total Advocates
                       </p>
                   </div>
                   <div class="icon">
                       <img src="img/222.png"  width="105" height="105" style="margin-top:10px">
                     <%--  <i class="fas fa-camera fa-xs"></i>--%>

                   </div>
                   <%--<a href="#" class="small-box-footer">
                       More info <i class="fa fa-arrow-circle-right"></i>
                   </a>--%>
               </div>
           </div><!-- ./col -->
           <div class="col-lg-3 col-xs-6">
               <!-- small box -->
               <div class="small-box bg-yellow">
                   <div class="inner">
                       <h3>
                          <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label> 
                       </h3>
                       <p>
                           User Petition</p>
                   </div>
                   <div class="icon">
                       <img src="img/456.png"  width="105" height="110">
                       <%--<i class="ion ion-person-add"></i>--%>
                   </div>
                  <%-- <a href="#" class="small-box-footer">
                       More info <i class="fa fa-arrow-circle-right"></i>
                   </a>--%>
               </div>
           </div><!-- ./col -->
           <div class="col-lg-3 col-xs-6">
               <!-- small box -->
               <div class="small-box bg-red">
                   <div class="inner">
                       <h3>
                          <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label> 
                       </h3>
                       <p>
                           Total Hearings</p>
                   </div>
                  
                   <div class="icon">
                        <img src="img/123.png"  width="85" height="90" style="margin-top:10px ; margin-right:5px" >
                       <%--<i class="fas fa-envelope fa-sm"></i>--%>
                   </div>

                  <%-- <a href="#" class="small-box-footer">
                       More info <i class="fa fa-arrow-circle-right"></i>
                   </a>--%>
               </div>
           </div><!-- ./col -->
       </div><!-- /.row -->

   </section><!-- /.content -->
</asp:Content>


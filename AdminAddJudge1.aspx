<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AdminAddJudge1.aspx.cs" Inherits="AdminAddJudge1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
                  <section class="content">
                  <div class="row">
                      <div class="col-xs-12">
                          <%--<div class="box">
                              <div class="box-header">
                              </div><!-- /.box-header -->
                              <!-- /.box-body -->
                          </div><!-- /.box -->--%>
                          
                          <div class="box">
                           
                              <div class="box-body table-responsive">
                              
                      
                                          <div>
                                              <h3 class="box-title">Add New Judge</h3>  
 <br />
   <div style="Width:1300px;text-align:left;padding-left: 100px;">
   
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
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox8" runat="server"  Height="26px" Width="225px"></asp:TextBox>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <asp:Label ID="Label16" 
           runat="server" Text="Contact No:" Font-Names="Arial" Font-Size="Medium"></asp:Label>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox10" runat="server"  Height="26px" Width="225px" ></asp:TextBox>
           <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
               ErrorMessage="*" ForeColor="#FF5050" ControlToValidate="TextBox10"></asp:RegularExpressionValidator>--%>
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
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList7" 
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
           runat="server" Text="Court Type:" Font-Names="Arial" Font-Size="Medium"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList10" 
               runat="server" Width="225px" Height="29px">
           </asp:DropDownList>
      <br />
       <br />
      <asp:Label ID="Label7" runat="server" Text="RetypePassword:" 
           Font-Names="Arial" Font-Size="Medium"></asp:Label>
     <asp:TextBox ID="TextBox5" runat="server" Width="225px"  Height="26px" TextMode="Password"></asp:TextBox> 
     &nbsp;&nbsp;&nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" 
               ControlToCompare="TextBox3" ControlToValidate="TextBox5" ErrorMessage="*" 
               ForeColor="Red"></asp:CompareValidator>
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label19" runat="server" 
           Text="Advocate Code:" Font-Names="Arial" Font-Size="Medium"></asp:Label>
      &nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox11" runat="server"  Height="26px" Width="225px" ></asp:TextBox>
           <br />
       <br />      
     <asp:Label ID="Label10" runat="server" Text="Address:" Font-Names="Arial" 
           Font-Size="Medium"></asp:Label>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox7" 
               runat="server" Width="225px" Height="40px" TextMode="MultiLine"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Label ID="Label1" runat="server" Text="Judge ID:" Font-Names="Arial" 
           Font-Size="Medium"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox 
           ID="TextBox4" runat="server" Height="26px" Width="225px" Enabled="False" ></asp:TextBox> 
      <br />
      <br />
      
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button 
               ID="Button3" runat="server" class="btn btn-primary w-md" Height="42px" Text="Submit" onclick="Button1_Click"  
      Width="170px" /> &nbsp;&nbsp;<asp:Button ID="Button4" 
               runat="server" class="btn btn-primary w-md" Height="42px" Text="Cancel"   
      Width="170px"  onclick="Button2_Click"/>
      
      <br />
      <br />
       <asp:Label ID="Label11" runat="server" Visible="False"></asp:Label>
        </div>
  </div>
                                     
                                 
                                   
                              </div><!-- /.box-body -->
                             
                          </div><!-- /.box -->
                      </div>
                  </div>

              </section><!-- /.content -->
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/PoliceMasterPage2.master" AutoEventWireup="true" CodeFile="PoliceAddCase1.aspx.cs" Inherits="PoliceAddCase1" %>

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
                           <div class="box-header">
                               <h3 class="box-title">Police Register Cases </h3>                                    
                           </div>
                           <div class="box-body table-responsive">
                           
                               <div style="Width:1000px;text-align:left;padding-left: 20px;">

    
   
   <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;       
                         <asp:Label ID="Label18" runat="server" 
        Text="Petition ID:" Font-Names="Arial" Font-Size="Medium"></asp:Label>
                         <asp:DropDownList ID="DropDownList4" 
            runat="server" Width="225px" Height="29px" AutoPostBack="True" 
                             onselectedindexchanged="DropDownList4_SelectedIndexChanged">
        </asp:DropDownList>
         <br />
    <br />
    <br />
     <asp:Label ID="Label3" runat="server" Text="Case ID:" Font-Bold="False" 
        Font-Names="Arial" Font-Size="Medium"></asp:Label>
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox 
                             ID="TextBox1" runat="server" Height="26px" Width="225px" Enabled="False"></asp:TextBox> &nbsp;&nbsp;&nbsp;
                         <asp:Label ID="Label15" runat="server" 
        Text="Case No:" Font-Names="Arial" Font-Size="Medium"></asp:Label>
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox11" runat="server"  Height="26px" Width="225px" ></asp:TextBox>
        
    <br />
    <br />
                         <asp:Label ID="Label13" runat="server" 
        Text="Case Type:" Font-Names="Arial" Font-Size="Medium"></asp:Label>
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList5" 
            runat="server" Width="225px" Height="29px" AutoPostBack="True" 
                             onselectedindexchanged="DropDownList5_SelectedIndexChanged">
        </asp:DropDownList>
                         &nbsp;&nbsp;&nbsp;  
                         <asp:Label ID="Label16" 
        runat="server" Text="Police Station:" Font-Names="Arial" Font-Size="Medium"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
            ErrorMessage="*" ForeColor="#FF5050" ControlToValidate="TextBox10"></asp:RegularExpressionValidator>--%><asp:TextBox 
                             ID="TextBox10" runat="server"  Height="26px" Width="225px" ></asp:TextBox>
        
        <br />
    <br />

   <asp:Label ID="Label4" runat="server" Text="Petition Date:" Font-Names="Arial" 
        Font-Size="Medium"></asp:Label>
  &nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox2" runat="server"  Height="26px" Width="225px"></asp:TextBox>
    
&nbsp;&nbsp;&nbsp; 
                         <asp:Label ID="Label17" runat="server" 
        Text="Register Date:" Font-Names="Arial" Font-Size="Medium"></asp:Label>
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox9" runat="server"  Height="26px" Width="225px" ></asp:TextBox>
        
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
  &nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br /> 
    <asp:Label ID="Label6" runat="server" Text="IPC Section" Font-Bold="False" 
        Font-Names="Arial" Font-Size="Medium"></asp:Label>
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox 
                             ID="TextBox4" runat="server" Height="26px" Width="225px" ></asp:TextBox> &nbsp;&nbsp;&nbsp;
                         <asp:Label ID="Label8" runat="server" 
        Text="Petition Username:" Font-Names="Arial" Font-Size="Medium"></asp:Label>
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox15" runat="server"  Height="26px" 
                                       Width="225px" ></asp:TextBox>
        
    <br />
    <br />
   <asp:Label ID="Label9" runat="server" Text="Incident Area:" Font-Names="Arial" 
        Font-Size="Medium"></asp:Label>
   &nbsp;&nbsp;<asp:TextBox ID="TextBox6" runat="server"  Height="26px" Width="225px" ></asp:TextBox>
   &nbsp;&nbsp;&nbsp; 
                         <asp:Label ID="Label10" 
        runat="server" Text="Respondent Username:" Font-Names="Arial" Font-Size="Medium"></asp:Label>
   &nbsp;<%--<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
            ErrorMessage="*" ForeColor="#FF5050" ControlToValidate="TextBox10"></asp:RegularExpressionValidator>--%><asp:DropDownList ID="DropDownList3" 
            runat="server" Width="225px" Height="29px" AutoPostBack="True" 
                             onselectedindexchanged="DropDownList3_SelectedIndexChanged">
        </asp:DropDownList>
        <br />
    <br />

   <asp:Label ID="Label12" runat="server" Text="Incident Date:" Font-Names="Arial" 
        Font-Size="Medium"></asp:Label>
  &nbsp;&nbsp;<asp:TextBox ID="TextBox7" runat="server"  Height="26px" Width="225px"></asp:TextBox>
    
&nbsp;&nbsp;&nbsp; 
                         &nbsp;<asp:Label ID="Label14" runat="server" Text="Court Officer :" Font-Names="Arial" 
        Font-Size="Medium"></asp:Label>
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox8" runat="server"  Height="26px" Width="225px" Enabled="False"></asp:TextBox>
        
    <br />
    <br />
   <asp:Label ID="Label20" runat="server" Text="Details:" 
        Font-Names="Arial" Font-Size="Medium"></asp:Label>
  &nbsp;&nbsp; &nbsp;&nbsp; <asp:TextBox 
                             ID="TextBox14" runat="server" Width="650px"  Height="106px" 
                             TextMode="MultiLine"></asp:TextBox> 
  &nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
    <br />      
                                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;           
                                   <br />
    <br /> 
     &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button 
            ID="Button3" runat="server" class="btn btn-primary w-md" Height="34px" Text="Register Case" onclick="Button3_Click"  
   Width="123px"/> &nbsp;&nbsp;<asp:Button ID="Button4" 
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
</asp:Content>


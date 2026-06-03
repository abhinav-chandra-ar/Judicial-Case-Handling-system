<%@ Page Title="" Language="C#" MasterPageFile="~/PoliceMasterPage2.master" AutoEventWireup="true" CodeFile="PoliceUploadEvidence.aspx.cs" Inherits="PoliceUploadEvidence" %>

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
                               <h3 class="box-title">Upload Evidence</h3>                                    
                           </div><!-- /.box-header -->
                            
                           <div class="box-body table-responsive">
                           
                     <div style="Width:1000px;text-align:left;padding-left: 20px;">

    <h3 class="box-title">Police Upload Evidence</h3> 
   
   <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;       
                         <asp:Label ID="Label18" runat="server" 
        Text="Case ID:" Font-Names="Arial" Font-Size="Medium"></asp:Label>
                         <asp:DropDownList ID="DropDownList4" 
            runat="server" Width="225px" Height="29px" AutoPostBack="True" 
                             onselectedindexchanged="DropDownList4_SelectedIndexChanged">
        </asp:DropDownList>
         <br />
    <br />
    <br />
     <asp:Label ID="Label3" runat="server" Text="Case ID:" Font-Bold="False" 
        Font-Names="Arial" Font-Size="Medium"></asp:Label>
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox 
                             ID="TextBox1" runat="server" Height="26px" Width="225px" Enabled="False"></asp:TextBox> &nbsp;&nbsp;&nbsp;
                         <asp:Label ID="Label15" runat="server" 
        Text="FIR No:" Font-Names="Arial" Font-Size="Medium"></asp:Label>
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox11" runat="server"  Height="26px" Width="225px" ></asp:TextBox>
        
    <br />
    
&nbsp;&nbsp;&nbsp; 
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br /> 
    <asp:Label ID="Label6" runat="server" Text="Evidence Type:" Font-Bold="False" 
        Font-Names="Arial" Font-Size="Medium"></asp:Label>
   &nbsp;<asp:TextBox 
                             ID="TextBox4" runat="server" Height="26px" Width="225px" ></asp:TextBox> &nbsp;&nbsp;&nbsp;
                         <asp:Label ID="Label8" runat="server" 
        Text="Petitioner Username:" Font-Names="Arial" Font-Size="Medium"></asp:Label>
   &nbsp;&nbsp;<asp:TextBox ID="TextBox15" runat="server"  
                             Height="26px" Width="225px" ></asp:TextBox>
        
    <br />
    <br />
   <asp:Label ID="Label9" runat="server" Text="Evidence Date:" Font-Names="Arial" 
        Font-Size="Medium"></asp:Label>
   &nbsp;&nbsp;<asp:TextBox ID="TextBox6" runat="server"  Height="26px" Width="225px" ></asp:TextBox>
   &nbsp;&nbsp;&nbsp; 
                         <asp:Label ID="Label10" 
        runat="server" Text="Police Username:" Font-Names="Arial" Font-Size="Medium"></asp:Label>
   &nbsp;<%--<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
            ErrorMessage="*" ForeColor="#FF5050" ControlToValidate="TextBox10"></asp:RegularExpressionValidator>--%><asp:TextBox 
                             ID="TextBox16" runat="server"  Height="26px" Width="225px" ></asp:TextBox>
        
        <br />
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
   <asp:Label ID="Label20" runat="server" Text="Evidence:" 
        Font-Names="Arial" Font-Size="Medium"></asp:Label>
  &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;  <asp:TextBox 
                             ID="TextBox14" runat="server" Width="625px"  Height="106px" 
                             TextMode="MultiLine"></asp:TextBox> 
  &nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
    <br />      
    <asp:Label ID="Label21" runat="server" Text="Attachment:" Font-Names="Arial" 
        Font-Size="Medium"></asp:Label>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;           
        <div style="margin-top:-1px;margin-left:120px; width:400px">
            <asp:FileUpload ID="FileUpload1" runat="server" Width="225px" Height="29px" 
                onload="FileUpload1_Load"/> 
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="FileUpload1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator></div>
    <br /> 
     &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button 
            ID="Button3" runat="server" class="btn btn-primary w-md" Height="32px" Text="Upload Evidence" onclick="Button3_Click"  
   Width="210px"/> &nbsp;&nbsp;<asp:Button ID="Button4" 
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


<%@ Page Title="" Language="C#" MasterPageFile="~/PetitionerMasterPage2.master" AutoEventWireup="true" CodeFile="PetitionerFilePetition1.aspx.cs" Inherits="PetitionerFilePetition1" %>

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
                                    <h3 class="box-title">Petitioner File New Incident </h3>                                    
                                </div><!-- /.box-header -->
                                 
                                <div class="box-body table-responsive">
                                
                          <div style="Width:1000px;text-align:left;padding-left: 20px;">
     
         
        <h3 class="box-title">Petitioner File New Incident </h3>      
        <br />
         <br />
          <asp:Label ID="Label3" runat="server" Text="Incident ID:" Font-Bold="False" 
             Font-Names="Arial" Font-Size="Medium"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox 
                                  ID="TextBox1" runat="server" Height="26px" Width="225px" Enabled="False"></asp:TextBox> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                              <asp:Label ID="Label15" runat="server" 
             Text="Incident Type:" Font-Names="Arial" Font-Size="Medium"></asp:Label>
        &nbsp;<asp:DropDownList ID="DropDownList2" 
                 runat="server" Width="225px" Height="29px" AutoPostBack="True" 
                                  onselectedindexchanged="DropDownList1_SelectedIndexChanged">
             </asp:DropDownList>
             
         <br />
         <br />
        <asp:Label ID="Label14" runat="server" Text="UserName:" Font-Names="Arial" 
             Font-Size="Medium"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox8" runat="server"  Height="26px" Width="225px" Enabled="False"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
                              <asp:Label ID="Label16" 
             runat="server" Text="Police Station:" Font-Names="Arial" Font-Size="Medium"></asp:Label>
        &nbsp;<%--<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                 ErrorMessage="*" ForeColor="#FF5050" ControlToValidate="TextBox10"></asp:RegularExpressionValidator>--%><asp:DropDownList ID="DropDownList3" 
                 runat="server" Width="225px" Height="29px" AutoPostBack="True" 
                                  onselectedindexchanged="DropDownList1_SelectedIndexChanged">
             </asp:DropDownList>
             <br />
         <br />

        <asp:Label ID="Label4" runat="server" Text="Petition Date:" Font-Names="Arial" 
             Font-Size="Medium"></asp:Label>
       &nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox2" runat="server"  Height="26px" Width="225px"></asp:TextBox>
         
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                              <asp:Label ID="Label17" runat="server" 
             Text="Incident Date:" Font-Names="Arial" Font-Size="Medium"></asp:Label>
        &nbsp;&nbsp;<asp:TextBox ID="TextBox9" runat="server"  Height="26px" Width="225px" ></asp:TextBox><asp:Label ID="Label1" runat="server" 
Text="(DD/MM/YYYY)" Font-Names="Arial" Font-Size="Medium"></asp:Label>
             
         <br />
         <br />
         
        <asp:Label ID="Label5" runat="server" Text="Incident Area:" Font-Names="Arial" 
             Font-Size="Medium"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox3" runat="server" Height="26px" Width="605px" ></asp:TextBox>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
         <br />
        <asp:Label ID="Label7" runat="server" Text="Incident Details:" 
             Font-Names="Arial" Font-Size="Medium"></asp:Label>
       <asp:TextBox 
                                  ID="TextBox5" runat="server" Width="605px"  Height="106px" 
                                  TextMode="MultiLine"></asp:TextBox> 
       &nbsp;&nbsp;&nbsp;
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
         <br />      
         <asp:Label ID="Label2" runat="server" Text="Attachment:" Font-Names="Arial" 
             Font-Size="Medium"></asp:Label>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;           
             <div style="margin-top:-1px;margin-left:120px; width:400px">
                 <asp:FileUpload ID="FileUpload1" runat="server" Width="225px" Height="29px" 
                     onload="FileUpload1_Load"/> 
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                 ControlToValidate="FileUpload1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator></div>
                 <br />
         <br /> 
          &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button 
                 ID="Button3" runat="server" class="btn btn-primary w-md" Height="32px" Text="Submit" onclick="Button1_Click"  
        Width="110px"/> &nbsp;&nbsp;<asp:Button ID="Button4" 
                 runat="server" class="btn btn-primary w-md" Height="32px" Text="Cancel"   
        Width="112px" onclick="Button2_Click"/>
        
        <br />
        <br />
         <asp:Label ID="Label11" runat="server" Visible="False"></asp:Label>
          </div>
                           </div>           
                                </div>
                        </div>
                    </div>

                </section><!-- /.content -->
</asp:Content>


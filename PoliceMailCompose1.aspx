<%@ Page Title="" Language="C#" MasterPageFile="~/PoliceMasterPage2.master" AutoEventWireup="true" CodeFile="PoliceMailCompose1.aspx.cs" Inherits="PoliceMailCompose1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
             <section class="content">
             <!-- MAILBOX BEGIN -->
             <div class="mailbox row">
                 <div class="col-xs-12">
                     <div class="box box-solid">
                         <div class="box-body">
                             <div class="row">
                                 <div class="col-md-3 col-sm-4">
                                     <!-- BOXES are complex enough to move the .box-header around.
                                          This is an example of having the box header within the box body -->
                                     <div class="box-header">
                                         <i class="fa fa-inbox"></i>
                                         <h3 class="box-title">INBOX</h3>
                                     </div>
                                     <!-- compose message btn -->
                                    <%-- <a class="btn btn-block btn-primary" data-toggle="modal" data-target="#compose-modal" href="PoliceMail.aspx"><i class="fa fa-pencil"></i> Inbox</a>--%>
                                     <!-- Navigation - folders-->
                                     <div style="margin-top: 15px;">
                                        
                                     </div>
                                 </div><!-- /.col (LEFT) -->
                                 <div class="col-md-9 col-sm-8">
                                    
                                  <asp:Label ID="Label14" runat="server" Text="Mail ID:"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 &nbsp;<asp:TextBox ID="TextBox9" runat="server" Width="575px" ></asp:TextBox>
      <br />
  <br />
    <asp:Label ID="Label17" runat="server" Text="Date:"></asp:Label>
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox12" runat="server" Width="575px" ></asp:TextBox>
      <br />
  <br />
<asp:Label ID="Label1" runat="server" Text="To:"></asp:Label>
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox1" runat="server" Width="575px" ></asp:TextBox>
      <br />
  <br />
<asp:Label ID="Label2" runat="server" Text="Subject:"></asp:Label>
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox2" runat="server" Width="575px" ></asp:TextBox>
      <br />
  <br />
  <asp:Label ID="Label19" runat="server" Text="Attachment:"></asp:Label>             
      <div style="margin-top:-1px;margin-left:85px; width:400px">
          <asp:FileUpload ID="FileUpload1" runat="server" Width="225px" Height="29px" 
              onload="FileUpload1_Load"/> 
          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
          ControlToValidate="FileUpload1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator></div>
  
  <asp:Label ID="Label21" runat="server" Text="Message:"></asp:Label>
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("message") %>' TextMode="MultiLine" Width="575px" Height="200px">  </asp:TextBox>
 <br />
  <br />
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button class="btn btn-primary w-md"
          ID="Button1"  runat="server" Height="32px" Text="Send"   onclick="Button1_Click"  
 Width="136px"/> &nbsp;&nbsp;
 <br />
 <br />
  <asp:Label ID="Label11" runat="server" Visible="False"></asp:Label>
   
  
                                      

                                 </div><!-- /.col (RIGHT) -->
                             </div><!-- /.row -->
                         </div><!-- /.box-body -->
                         <div class="box-footer clearfix">
                            <%-- <div class="pull-right">
                                 <small>Showing 1-12/1,240</small>
                                 <button class="btn btn-xs btn-primary"><i class="fa fa-caret-left"></i></button>
                                 <button class="btn btn-xs btn-primary"><i class="fa fa-caret-right"></i></button>
                             </div>--%>
                         </div><!-- box-footer -->
                     </div><!-- /.box -->
                 </div><!-- /.col (MAIN) -->
             </div>
             <!-- MAILBOX END -->

         </section><!-- /.content -->
</asp:Content>


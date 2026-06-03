<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AdminMailRead1.aspx.cs" Inherits="AdminMailRead1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <div>
      <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
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
                                          <%--  <a class="btn btn-block btn-primary" data-toggle="modal" href="AdminMailCompose.aspx"><i class="fa fa-pencil"></i> Compose Message</a>--%>
                                            <!-- Navigation - folders-->
                                            <div style="margin-top: 15px;">
                                                <ul class="nav nav-pills nav-stacked">
                                                    <li class="header">Folders</li>
                                                    <li class="active"><a href="AdminMail1.aspx"><i class="fa fa-inbox"></i> Inbox </a></li>
                                                    <%--<li><a href="#"><i class="fa fa-pencil-square-o"></i> Drafts</a></li>
                                                    <li><a href="#"><i class="fa fa-mail-forward"></i> Sent</a></li>
                                                    <li><a href="#"><i class="fa fa-star"></i> Starred</a></li>
                                                    <li><a href="#"><i class="fa fa-folder"></i> Junk</a></li>--%>
                                                </ul>
                                            </div>
                                        </div><!-- /.col (LEFT) -->
                                        <div class="col-md-9 col-sm-8">
                                            <asp:DataList ID="DataList1" runat="server"       
         DataKeyField="mid" onselectedindexchanged="DataList1_SelectedIndexChanged" >
            
            <ItemTemplate>
             <table class="table table-bordered table-striped">
            <tr>
                    <th>
                      Mail ID: <%# Eval("mid")%>
                     </th>
                    </tr>
                    <tr>
                     <th>
                      Date:  <%# Eval("mdate")%>
                     </th>
                    </tr>
                    <tr>
                     <th>
                     From:      <%# Eval("mfrom")%>
                     </th>
                    </tr>
                    <tr>
                     <th>
                     Subject:     <%# Eval("subject")%>
                     </th>
                    </tr>
                 <tr>
                     <th>
                     Attachment:  <asp:Button class="btn btn-info" ID="btn1" runat="server" CommandName="Select"  Text="Download" /> 
                     </th>
                    </tr>
                    <tr>
                     <th>
                      Message: <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("message") %>' TextMode="MultiLine" Width="575px" Height="200px">  </asp:TextBox>
                     </th>
                    </tr>
                    </table>
               
         </ItemTemplate>
       
</asp:DataList>
                                            
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
                </div>
</asp:Content>


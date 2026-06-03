<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AdminApprovePetitioner1.aspx.cs" Inherits="AdminApprovePetitioner1" %>

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
                                    <h3 class="box-title">New Petitioner For Approval</h3>                                    
                                </div><!-- /.box-header -->
                                 
                                <div class="box-body table-responsive">
                                 <h3 class="box-title">New Petitioner For Approval</h3> 
                          
                                           <asp:DataList ID="DataList1" runat="server" OnEditCommand="DataList1_EditCommand"      
        OnCancelCommand="DataList1_CancelCommand" DataKeyField="petid" onselectedindexchanged="DataList1_SelectedIndexChanged" >
            <HeaderTemplate>
               <table class="table table-bordered table-striped">
                  <tr>
                     <th>
                       PetitionerID
                     </th>
                     <th>
                        PetitionerNo
                     </th>
                     <th>
                        Name
                     </th>
                      <th>
                       Date of Birth
                     </th>
                     <th>
                       Mobile
                     </th>
                     <th>
                       Email
                     </th>
                     <th>
                        Gender
                     </th>
                     <th>
                        Username
                     </th>
                      <th>
                        Status
                     </th>
                  </tr>
                 
            </HeaderTemplate>
            <ItemTemplate>
           
               <tr >
               <td>
                 <%# Eval("petid")%>
               </td>
               <td>
                <%# Eval("petidno")%>
               </td>
               <td>
                <%# Eval("name")%> 
               </td>
               <td>
                <%# Eval("dob")%>
               </td>
               <td>
                <%# Eval("phone")%>
               </td>
                <td>
                <%# Eval("email")%>
               </td>
               <td>
                <%# Eval("gender")%>
               </td>
               <td>
                <%# Eval("username")%>
               </td>
                             
               <td>
               <asp:Button class="btn btn-info" ID="btn1" runat="server" CommandName="Select"  Text="Approve" /> 
               </td>
            </tr>
       
         </ItemTemplate>
       
</asp:DataList>
                                       
                                   
                                     
                                </div><!-- /.box-body -->
                               
                            </div><!-- /.box -->
                        </div>
                    </div>

                </section><!-- /.content -->
</asp:Content>


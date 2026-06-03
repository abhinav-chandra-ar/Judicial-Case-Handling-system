<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AdminViewPolice1.aspx.cs" Inherits="AdminViewPolice1" %>

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
                                                                      
                                </div><!-- /.box-header -->
                                 
                                <div class="box-body table-responsive">
                                  <h3 class="box-title">Admin View Police</h3>
                          
                                           <asp:DataList ID="DataList1" runat="server"      
        OnCancelCommand="DataList1_CancelCommand" DataKeyField="pid" >
            <HeaderTemplate>
               <table class="table table-bordered table-striped">
                  <tr>
                     <th>
                       Police ID
                     </th>
                     <th>
                        Police Code
                     </th>
                     <th>
                        Name
                     </th>
                     <th>
                        Police Station
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
                     
                  </tr>
                 
            </HeaderTemplate>
            <ItemTemplate>
           
               <tr >
               <td>
                 <%# Eval("pid")%>
               </td>
               <td>
                <%# Eval("pcode")%>
               </td>
               <td>
                <%# Eval("name")%> 
               </td>
               <td>
                <%# Eval("pstation")%> 
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
                             
             
            </tr>
       
         </ItemTemplate>
       
</asp:DataList>
                                       
                                   
                                     
                                </div><!-- /.box-body -->
                               
                            </div><!-- /.box -->
                        </div>
                    </div>

                </section><!-- /.content -->
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/CourtOfficerMasterPage2.master" AutoEventWireup="true" CodeFile="CourtOfficerViewActiveCases.aspx.cs" Inherits="CourtOfficerViewActiveCases" %>

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
                                 <br />
                                    <h3 class="box-title"> Active Case Details</h3>   
                                <br />     
         <asp:DataList ID="DataList2" runat="server"    
        DataKeyField="caseid" onselectedindexchanged="DataList2_SelectedIndexChanged" >
            <HeaderTemplate>
               <table class="table table-bordered table-striped">
                  <tr>
                     <th>
                       Case ID
                     </th>
                     <th>
                        Case Type
                     </th>
                      <th>
                        IPC Section
                     </th>
                     <th>
                        firno
                     </th>
                     <th>
                        Police Station
                     </th>
                     <th>
                       Petitioner Username
                     </th>
                     <th>
                       Case Date
                     </th>
                     <th>
                       Incidenet Date
                     </th>
                     <th>
                        Location
                     </th>
                      <%--<th>
                        Attachment
                     </th>--%>
                  </tr>
                 
            </HeaderTemplate>
            <ItemTemplate>
           
               <tr >
               <td>
                 <%# Eval("caseid")%>
               </td>
               <td>
                <%# Eval("casetype")%>
               </td>
               <td>
                <%# Eval("ipcsection")%> 
               </td>
               <td>
                <%# Eval("firno")%> 
               </td>
               <td>
                <%# Eval("pstation")%>
               </td>
               <td>
                <%# Eval("petuname")%>
               </td>
                <td>
                <%# Eval("casedate")%>
               </td>
               <td>
                <%# Eval("incidate")%>
               </td>
                <td>
                <%# Eval("inilocation")%>
               </td>
               <%--<td>
               <asp:Button class="btn btn-info" ID="btn1" runat="server" CommandName="Select"  Text="Download" /> 
               </td>--%>
                             
               
            </tr>
       
         </ItemTemplate>
       
</asp:DataList>
          <br />
         <br />                  
         <div class="box-header">
                                                                     
                                </div><!-- /.box-header -->
                                <br />     
<br />
         <br />                  
         <div class="box-header">
                                                                       
                                </div><!-- /.box-header -->
                                <br />     

                           </div>           
                                </div>
                        </div>
                    </div>

                </section><!-- /.content -->
</asp:Content>


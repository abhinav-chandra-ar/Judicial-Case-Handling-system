<%@ Page Title="" Language="C#" MasterPageFile="~/PetitionerMasterPage2.master" AutoEventWireup="true" CodeFile="PetitionerAdvocateHistory1.aspx.cs" Inherits="PetitionerAdvocateHistory1" %>

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
                                     <h3 class="box-title">Advocate History</h3>      
                                 <br />
                                  <br />
                                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label2" 
             runat="server" Text="Advocate" Font-Names="Arial" Font-Size="Medium"></asp:Label> &nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:DropDownList ID="DropDownList4" 
                 runat="server" Width="225px" Height="29px" AutoPostBack="True" 
                                  onselectedindexchanged="DropDownList4_SelectedIndexChanged">
             </asp:DropDownList>
                                    
                                                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label1" 
runat="server" Text="Case Type" Font-Names="Arial" Font-Size="Medium"></asp:Label> &nbsp;&nbsp;&nbsp;&nbsp;
                       <asp:DropDownList ID="DropDownList1" 
    runat="server" Width="225px" Height="29px" AutoPostBack="True" 
                     onselectedindexchanged="DropDownList1_SelectedIndexChanged">
</asp:DropDownList>

        <br />
         <br />
                                             <div class="box-header">
                                                                       
                                </div><!-- /.box-header -->
                                     <h3 class="box-title"> Personal Details</h3>
                                <br />     
                                <asp:DataList ID="DataList3" runat="server"  DataKeyField="adid" onselectedindexchanged="DataList3_SelectedIndexChanged" >
            <HeaderTemplate>
               <table class="table table-bordered table-striped">
                  <tr>
                     <th>
                       Advocate ID
                     </th>
                     <th>
                        BAR Code
                     </th>
                     <th>
                       Name 
                     </th>
                     <th>
                       Phone 
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
                        Court Reg
                     </th>
                      <th>
                       Photo
                     </th>
                    
                  </tr>
                 
            </HeaderTemplate>
            <ItemTemplate>
           
               <tr >
               <td>
                 <%# Eval("adid")%>
               </td>
               <td>
                <%# Eval("adcode")%>
               </td>
            
               <td>
                <%# Eval("name")%>
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
                <%# Eval("certificate")%>
               </td>
              
                  <td>
               <asp:Image ID="imgEmp" runat="server" Width="50px" Height="50px" ImageUrl='<%# Bind("aphoto") %>'/><br />
               </td>            
               
            </tr>
       
         </ItemTemplate>
       
</asp:DataList>
 <br />   
          <div class="box-header">
                                                                      
                                </div><!-- /.box-header -->
                                     <h3 class="box-title"> Case Details</h3> 
                                <br />   
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
                        Case No
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
              <%-- <td>
               <asp:Button class="btn btn-info" ID="btn1" runat="server" CommandName="Select"  Text="Download" /> 
               </td>--%>
                             
               
            </tr>
       
         </ItemTemplate>
       
</asp:DataList>
         
         <br />                  
         
                           </div>           
                                </div>
                        </div>
                    </div>

                </section><!-- /.content -->
</asp:Content>


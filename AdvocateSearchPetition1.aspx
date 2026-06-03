<%@ Page Title="" Language="C#" MasterPageFile="~/AdvocateMasterPage.master" AutoEventWireup="true" CodeFile="AdvocateSearchPetition1.aspx.cs" Inherits="AdvocateSearchPetition1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
                                <script type="text/javascript">
function isNumberKey(evt) {
    var charCode = (evt.which) ? evt.which : evt.keyCode;
    // Allow digits (0-9), backspace (8), delete (46)
    if (charCode === 8 || charCode === 46) return true;
    if (charCode >= 48 && charCode <= 57) return true;
    return false;
            }

                                </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
                    <section class="content">
                    <div class="row">
                        <div class="col-xs-12">
                           
                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label2" 
             runat="server" Text="Petition ID" Font-Names="Arial" Font-Size="Medium"></asp:Label> &nbsp;&nbsp;&nbsp;&nbsp;
      <asp:TextBox ID="TextBox3" runat="server" Height="26px" Width="225px" onkeypress="return isNumberKey(event);" ></asp:TextBox> <asp:RegularExpressionValidator 
ID="RegexValidatorForTextBox3" 
runat="server" 
ControlToValidate="TextBox3"
ErrorMessage="Numbers only." 
ForeColor="Red"
ValidationExpression="^\d+$" 
Display="Dynamic" />&nbsp;&nbsp;<asp:Button 
                 ID="Button1" runat="server" class="btn btn-primary w-md" Height="32px" Text="Search" onclick="Button1_Click"  
        Width="110px"/> 
        <br />
         <br />
                   
                                </div><!-- /.box-header -->
                                <br />     
<br />
 <%--<h3 class="box-title">View Pending Petition for Approval </h3>   --%>
                                       

         <br />                  
         <div class="box-header">
                                    <h3 class="box-title"> Petition Approved by Court</h3>                                    
                                </div><!-- /.box-header -->
                                <br />   
                                   <br />   
                                <%--    <h3 class="box-title">View Approved Petition </h3>  --%> 
                                <asp:DataList ID="DataList3" runat="server"  DataKeyField="Petitionid" onselectedindexchanged="DataList3_SelectedIndexChanged" >
            <HeaderTemplate>
               <table class="table table-bordered table-striped">
                   <tr>
                     <th>
                       Incident ID
                     </th>
                     <th>
                        Username
                     </th>
                     <th>
                        File Date
                     </th>
                     <th>
                      Incident Date
                     </th>
                     <th>
                      Location
                     </th>
                    
                     
                  </tr>
                 
            </HeaderTemplate>
            <ItemTemplate>
           <tr >
               <td>
                 <%# Eval("Petitionid")%>
               </td>
               <td>
                <%# Eval("Puname")%>
               </td>
               <td>
                <%# Eval("pdate")%> 
               </td>
               <td>
                <%# Eval("indate")%>
               </td>
               <td>
                <%# Eval("inlocation")%>
               </td>
              
              
              
            </tr>
       
         </ItemTemplate>
       
</asp:DataList>

<div class="box-header">
                                    <h3 class="box-title"> Case in Court</h3>                                    
                                </div><!-- /.box-header -->
                                <br />   
                                   <br />  
<asp:DataList ID="DataList1" runat="server"    
        DataKeyField="caseid" onselectedindexchanged="DataList1_SelectedIndexChanged" >
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
                    <%--  <th>
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
           <%--    <td>
               <asp:Button class="btn btn-info" ID="btn1" runat="server" CommandName="Select"  Text="Download" /> 
               </td>--%>
                             
               
            </tr>
       
         </ItemTemplate>
       
</asp:DataList>

                           </div>           
                                </div>
                        </div>
                    </div>

                </section><!-- /.content -->
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/PoliceMasterPage2.master" AutoEventWireup="true" CodeFile="PoliceCaseStatus1.aspx.cs" Inherits="PoliceCaseStatus1" %>

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
                            <%--<div class="box">
                                <div class="box-header">
                                </div><!-- /.box-header -->
                                <!-- /.box-body -->
                            </div><!-- /.box -->--%>
                       <div class="box">
                                <div class="box-header">
                                                                       
                                </div><!-- /.box-header -->
                                 
                                <div class="box-body table-responsive">
                                    <h3 class="box-title">Police View Case Details</h3> 
                                 <br />
                                  <br />
                                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label2" 
             runat="server" Text="Case ID" Font-Names="Arial" Font-Size="Medium"></asp:Label> &nbsp;&nbsp;&nbsp;&nbsp;
      <asp:TextBox ID="TextBox3" runat="server" Height="26px" Width="225px"  onkeypress="return isNumberKey(event);"></asp:TextBox> <asp:RegularExpressionValidator 
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
          <div class="box-header">
                                                                   
                                </div><!-- /.box-header -->
                                      <h3 class="box-title"> Case Details</h3>   
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
                      <th>
                        Attachment
                     </th>
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
               <td>
               <asp:Button class="btn btn-info" ID="btn1" runat="server" CommandName="Select"  Text="Download" /> 
               </td>
                             
               
            </tr>
       
         </ItemTemplate>
       
</asp:DataList>
          <br />
         <br />                  
         <div class="box-header">
                                                                     
                                </div><!-- /.box-header -->
                                      <h3 class="box-title"> Evidence Details</h3> 
                                <br />     
                                <asp:DataList ID="DataList1" runat="server"  DataKeyField="evid" onselectedindexchanged="DataList1_SelectedIndexChanged" >
            <HeaderTemplate>
               <table class="table table-bordered table-striped">
                  <tr>
                     <th>
                       Evidence ID
                     </th>
                     <th>
                        Case ID
                     </th>
                     <th>
                        firno
                     </th>
                     <th>
                       Petitioner Username
                     </th>
                     <th>
                       Evidence Uploader
                     </th>
                     <th>
                       Evidence Type
                     </th>
                     <th>
                        Evidence Date
                     </th>
                      <th>
                        Attachment
                     </th>
                  </tr>
                 
            </HeaderTemplate>
            <ItemTemplate>
           
               <tr >
               <td>
                 <%# Eval("evid")%>
               </td>
               <td>
                <%# Eval("caseid")%>
               </td>
               <td>
                <%# Eval("firno")%> 
               </td>
               <td>
                <%# Eval("petuname")%>
               </td>
               <td>
                <%# Eval("petadvuname")%>
               </td>
                <td>
                <%# Eval("evtype")%>
               </td>
               <td>
                <%# Eval("evdate")%>
               </td>
               <td>
               <asp:Button class="btn btn-info" ID="btn1" runat="server" CommandName="Select"  Text="Download" /> 
               </td>
                             
               
            </tr>
       
         </ItemTemplate>
       
</asp:DataList>
<br />
         <br />                  
         <div class="box-header">
                                                                       
                                </div><!-- /.box-header -->
                                    <h3 class="box-title"> Hearing Details</h3> 
                                <br />     
                                <asp:DataList ID="DataList3" runat="server"  DataKeyField="hid" onselectedindexchanged="DataList3_SelectedIndexChanged" >
            <HeaderTemplate>
               <table class="table table-bordered table-striped">
                  <tr>
                     <th>
                       Hearing ID
                     </th>
                     <th>
                        Case ID
                     </th>
                     <th>
                        firno
                     </th>
                     <th>
                       Petitioner Advocate
                     </th>
                     <th>
                       Respondent uname
                     </th>
                     <th>
                       Respondent Advocate
                     </th>
                     <th>
                       Hearing Date
                     </th>
                     <th>
                        Hearing Type
                     </th>
                      <th>
                        Judgement Details 
                     </th>
                     <th>
                        Case Status
                     </th>
                  </tr>
                 
            </HeaderTemplate>
            <ItemTemplate>
           
               <tr >
               <td>
                 <%# Eval("hid")%>
               </td>
               <td>
                <%# Eval("caseid")%>
               </td>
               <td>
                <%# Eval("firno")%> 
               </td>
               <td>
                <%# Eval("petadvuname")%>
               </td>
               <td>
                <%# Eval("respuname")%>
               </td>
               <td>
                <%# Eval("respadvuname")%>
               </td>
                <td>
                <%# Eval("heardate")%>
               </td>
               <td>
                <%# Eval("heartype")%>
               </td>
               <td>
                <%# Eval("details")%>
               </td>
               <td>
                <%# Eval("cstatus")%>
               </td>
                             
               
            </tr>
       
         </ItemTemplate>
       
</asp:DataList>

                           </div>           
                                </div>
                        </div>
                    </div>

                </section><!-- /.content -->
</asp:Content>


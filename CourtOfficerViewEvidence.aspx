<%@ Page Title="" Language="C#" MasterPageFile="~/CourtOfficerMasterPage2.master" AutoEventWireup="true" CodeFile="CourtOfficerViewEvidence.aspx.cs" Inherits="CourtOfficerViewEvidence" %>

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
                                    <h3 class="box-title">Admin View Evidence</h3>                                    
                                </div><!-- /.box-header -->
                                 
                                <div class="box-body table-responsive">
                                 <br />
                                  <br />
                                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label1" 
             runat="server" Text="Case ID" Font-Names="Arial" Font-Size="Medium"></asp:Label> &nbsp;&nbsp;&nbsp;&nbsp;
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
                            

                                <asp:DataList ID="DataList1" runat="server" OnEditCommand="DataList1_EditCommand"      
        OnCancelCommand="DataList1_CancelCommand" DataKeyField="evid" onselectedindexchanged="DataList1_SelectedIndexChanged" >
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
                           </div>           
                                </div>
                        </div>
                    </div>

                </section><!-- /.content -->
</asp:Content>


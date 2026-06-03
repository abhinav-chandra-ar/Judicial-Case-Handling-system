<%@ Page Title="" Language="C#" MasterPageFile="~/CourtOfficerMasterPage2.master" AutoEventWireup="true" CodeFile="CourtOfficerScheduleHearing.aspx.cs" Inherits="CourtOfficerScheduleHearing" %>

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
        <script type="text/javascript">
            function isAlphabetOnly(evt) {
                var charCode = (evt.which) ? evt.which : evt.keyCode;
                // Allow A-Z (65–90) and a–z (97–122)
                if ((charCode >= 65 && charCode <= 90) || (charCode >= 97 && charCode <= 122))
                    return true;
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
                                    <h3 class="box-title">Hearing Schedule</h3>                                    
                                </div><!-- /.box-header -->
                                 
                                <div class="box-body table-responsive">
                                     <h3 class="box-title">Court Officer Hearing Schedule</h3>  
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
    Display="Dynamic" />  &nbsp;&nbsp;<asp:Button 
                 ID="Button1" runat="server" class="btn btn-primary w-md" Height="32px" Text="Search" onclick="Button1_Click"  
        Width="110px"/> 
        <br />
         <br />
                            

                                <asp:DataList ID="DataList1" runat="server" DataKeyField="hid" onselectedindexchanged="DataList" >
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
                       Petitioner Username
                     </th>
                      <th>
                       Respondent Username
                     </th>
                     <th>
                       Petitioner Advocate
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
                        Status
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
                <%# Eval("petuname")%>
               </td>
               <td>
                <%# Eval("respuname")%>
               </td>
               <td>
                <%# Eval("petadvuname")%>
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
                <%# Eval("cstatus")%>
               </td>
                             
               
            </tr>
       
         </ItemTemplate>
       
</asp:DataList>
                          <div style="Width:1000px;text-align:left;padding-left: 20px;">
     
         
        
        <br />
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;       
                              <asp:Label ID="Label18" runat="server" 
             Text="Hearing ID:" Font-Names="Arial" Font-Size="Medium"></asp:Label>
                              <asp:DropDownList ID="DropDownList4" 
                 runat="server" Width="225px" Height="29px" AutoPostBack="True" 
                                  onselectedindexchanged="DropDownList4_SelectedIndexChanged">
             </asp:DropDownList>
                               &nbsp;&nbsp;&nbsp;<asp:Label ID="Label26" 
             runat="server" Text="Case Status" Font-Names="Arial" Font-Size="Medium"></asp:Label>
              &nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList6" 
                 runat="server" Width="225px" Height="29px" AutoPostBack="True" 
                                  onselectedindexchanged="DropDownList6_SelectedIndexChanged">
             </asp:DropDownList>
             
              <br />
         <br />
         <br />
          <asp:Label ID="Label3" runat="server" Text="Case ID:" Font-Bold="False" 
             Font-Names="Arial" Font-Size="Medium"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:TextBox 
                                  ID="TextBox1" runat="server" Height="26px" Width="225px" Enabled="False"></asp:TextBox> &nbsp;&nbsp;&nbsp;
                              <asp:Label ID="Label15" runat="server" 
             Text="FIR No:" Font-Names="Arial" Font-Size="Medium"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox 
                                  ID="TextBox11" runat="server"  Height="26px" Width="225px" Enabled="False" ></asp:TextBox>
             
         <br />
         <br />
                              <asp:Label ID="Label13" runat="server" 
             Text="Hearing ID:" Font-Names="Arial" Font-Size="Medium"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox17" runat="server"  Height="26px" 
                                  Width="225px" Enabled="False"></asp:TextBox>
             
                              &nbsp;&nbsp;&nbsp;  
                              <asp:Label ID="Label16" 
             runat="server" Text="Case Status" Font-Names="Arial" Font-Size="Medium"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                 ErrorMessage="*" ForeColor="#FF5050" ControlToValidate="TextBox10"></asp:RegularExpressionValidator>--%>
                             &nbsp;&nbsp;&nbsp;   
                              <asp:TextBox ID="TextBox22" runat="server"  
                                  Height="26px" Width="225px" Enabled="False"></asp:TextBox>
             
             <br />
                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br /> 
         <asp:Label ID="Label6" runat="server" Text="Hearing Date" Font-Bold="False" 
             Font-Names="Arial" Font-Size="Medium"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;<asp:TextBox 
                                  ID="TextBox4" runat="server" Height="26px" Width="225px" Enabled="False" ></asp:TextBox> &nbsp;&nbsp;&nbsp;
                              <asp:Label ID="Label8" runat="server" 
             Text="Petition Username:" Font-Names="Arial" Font-Size="Medium"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox16" runat="server"  
                                  Height="26px" Width="225px" Enabled="False"></asp:TextBox>
             
         <br />
         <br />
        <asp:Label ID="Label9" runat="server" Text="Hearing Type:" Font-Names="Arial" 
             Font-Size="Medium"></asp:Label>
        &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox6" runat="server"  Height="26px" Width="225px" Enabled="False" ></asp:TextBox>
        &nbsp;&nbsp;&nbsp; 
                              <asp:Label ID="Label10" 
             runat="server" Text="Respondent Username:" Font-Names="Arial" Font-Size="Medium"></asp:Label>
        &nbsp;<%--<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                 ErrorMessage="*" ForeColor="#FF5050" ControlToValidate="TextBox10"></asp:RegularExpressionValidator>--%><asp:TextBox 
                                  ID="TextBox15" runat="server"  Height="26px" Width="225px" Enabled="False"></asp:TextBox>
             
             <br />
                              &nbsp; 
                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        <asp:Label ID="Label20" runat="server" Text="Hearing Details:" 
             Font-Names="Arial" Font-Size="Medium"></asp:Label>
       &nbsp;&nbsp; &nbsp;&nbsp; 
                              <asp:TextBox 
                                  ID="TextBox14" runat="server" Width="650px"  Height="106px" 
                                  TextMode="MultiLine"></asp:TextBox> 
       &nbsp;&nbsp;&nbsp;
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
         <br />      
                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                              <asp:Label ID="Label22" 
             runat="server" Text="Petitioner Advocate:" Font-Names="Arial" Font-Size="Medium"></asp:Label>&nbsp;<asp:TextBox 
                                  ID="TextBox18" runat="server"  Height="26px" Width="215px" Enabled="False"></asp:TextBox>
             
                           
         &nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;   <asp:Label ID="Label23" 
             runat="server" Text="Respondent Advocate:" Font-Names="Arial" Font-Size="Medium"></asp:Label>
                               <asp:TextBox ID="TextBox19" runat="server"  Height="26px" Width="215px" 
                                  Enabled="False"></asp:TextBox>
             
                 <br />
         <br />         
             <br /> 
          &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button 
                 ID="Button3" runat="server" Height="32px" Text="Update Hearing Details" onclick="Button3_Click"  
        Width="210px"/> &nbsp;&nbsp;<br />
        <br />
        
    <asp:Label ID="Label24" runat="server" Text="Hearing Date (DD/MM/YYY)" Font-Bold="False"
        Font-Names="Arial" Font-Size="Medium"></asp:Label>
                             &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp; <asp:TextBox 
                                  ID="TextBox20" runat="server" Height="26px" Width="225px" ></asp:TextBox> 
         &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<asp:Label ID="Label25" runat="server" Text="Hearing Type:" Font-Names="Arial" 
             Font-Size="Medium"></asp:Label>
                              &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox21" runat="server"  Height="26px" Width="225px" onkeypress="return isAlphabetOnly(event);"></asp:TextBox> <asp:RegularExpressionValidator 
    ID="RegexValidator_TextBox21" 
    runat="server" 
    ControlToValidate="TextBox21"
    ErrorMessage="Only alphabets are allowed." 
    ForeColor="Red"
    ValidationExpression="^[A-Za-z]+$" 
    Display="Dynamic" />
                              <br />
                              <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                              &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; 
                              <asp:Button 
                 ID="Button5" runat="server" Height="32px" Text="Schedule Next Hearing" onclick="Button5_Click"  
        Width="210px"/> 
        
<br />
        <br />
         <asp:Label ID="Label11" runat="server" Visible="False" ForeColor="Red"></asp:Label>

          </div>
                           </div>           
                                </div>
                        </div>
                    </div>

                </section><!-- /.content -->
</asp:Content>


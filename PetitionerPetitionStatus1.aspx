<%@ Page Title="" Language="C#" MasterPageFile="~/PetitionerMasterPage2.master" AutoEventWireup="true" CodeFile="PetitionerPetitionStatus1.aspx.cs" Inherits="PetitionerPetitionStatus1" %>

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
                     
                        
                        <div class="box">
                          
                             
                            <div class="box-body table-responsive">
                            
                      <div>

    <div class="box-header">
                                <h3 class="box-title">Petition Status View </h3>                                    
                            </div><!-- /.box-header -->
                             
                            <div class="box-body table-responsive">
                                  <h3 class="box-title">Petition Status View </h3>             
                             <br />
                              <br />
                               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label2" 
         runat="server" Text="Petition ID" Font-Names="Arial" Font-Size="Medium"></asp:Label> &nbsp;&nbsp;&nbsp;&nbsp;
  <asp:TextBox ID="TextBox3" runat="server" Height="26px" Width="225px" onkeypress="return isNumberKey(event);" ></asp:TextBox> <asp:RegularExpressionValidator 
    ID="RegexValidatorForTextBox3" 
    runat="server" 
    ControlToValidate="TextBox3"
    ErrorMessage="Numbers only." 
    ForeColor="Red"
    ValidationExpression="^\d+$" 
    Display="Dynamic" /> &nbsp;&nbsp;<asp:Button 
             ID="Button1" runat="server" class="btn btn-primary w-md" Height="32px" Text="Search" onclick="Button1_Click"  
    Width="110px"/> 
    <br />
     <br />
   
     <asp:Label ID="Label11" runat="server" Visible="False" Font-Bold="True" Font-Names="Arial" 
                                    Font-Size="Large" ForeColor="Red"></asp:Label>

</div>
                                 
                            </div><!-- /.box-body -->
                           
                        </div><!-- /.box -->
                    </div>
                </div>

            </section><!-- /.content -->
</asp:Content>


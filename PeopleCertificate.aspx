<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PeopleCertificate.aspx.cs" Inherits="PeopleCertificate" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    
     <script type = "text/javascript">
         function pPrintPanel() {
             var panel = document.getElementById("<%=Panel1.ClientID %>");
             var printWindow = window.open('', '', 'height=2000,width=800');
             printWindow.document.write('<html><head><title>DIV Contents</title>');
             printWindow.document.write('</head><body >');
             printWindow.document.write(panel.innerHTML);
             printWindow.document.write('</body></html>');
             printWindow.document.close();
             setTimeout(function () {
                 printWindow.print();
             }, 500);
             return false;
         }
    </script>
    
    
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 615px;
            font-weight: 700;
        }
        .style3
        {
            width: 619px;
        }
        .style4
        {
        }
        .style5
        {
        }
        .style6
        {
        }
        .style24
        {
            height: 88px;
            width: 232px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
        
        <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="View1" runat="server">

                <table class="style1">
                    <tr>
                        <td>
                            <asp:Button ID="Button6" runat="server" onclick="Button6_Click" Text="Home" />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Panel ID="Panel1" runat="server">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <img alt="" class="style24" 
                src="images/logo7.png" />
                                <br />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="style2">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;e-VAKALAT<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br /> 
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><br />
                                <table align="center" border="0" class="style3">
                                    <tr>
                                        <td class="style4">
                                            <asp:Label ID="lblreq" runat="server" CssClass="label" ForeColor="Black" 
                                                Text="Case No:"></asp:Label>
                                        </td>
                                        <td class="style20">
                                            <asp:Label ID="Pid" runat="server" Text=""></asp:Label>
                                        </td>
                                        <td class="style20" rowspan="3">
                                        
                                            <br />
               </td>
                                    </tr>
                                    <tr>
                                        <td class="style4">
                                            <asp:Label ID="lbloid" runat="server" CssClass="label" ForeColor="Black" 
                                                Text="Court Name"></asp:Label>
                                        </td>
                                        <td class="style20">
                                            <asp:Label ID="Prid" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style4">
                                            Date</td>
                                        <td class="style20">
                                            <asp:Label ID="ppost0" runat="server" Text=""></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style4">
                                            <asp:Label ID="lblname" runat="server" CssClass="label" ForeColor="Black" 
                                                Text="Between"></asp:Label>
                                        </td>
                                        <td class="style20" colspan="2">
                                            <asp:Label ID="Pname" runat="server" Text=""></asp:Label>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Vs&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Label ID="pdis0" runat="server" Text=""></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style4">
                                            Petitioner Advocate</td>
                                        <td class="style20" colspan="2">
                                            <asp:Label ID="padd" runat="server" Text=""></asp:Label>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style4" colspan="3">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style5" colspan="3">
                                            I / we&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Label ID="padd0" runat="server" Text=""></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style5" colspan="3">
                                            do hereby appoint &amp; retain Advocate&nbsp;&nbsp;
                                            <asp:Label ID="padd1" runat="server" Text=""></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style5" colspan="3">
                                            (hereinafter called as “the Advocates”) to be my / our advocates in the said 
                                            Suit /Appeal / Petition / Case /Reference / Revision / Execution. I / we 
                                            authorize the Advocates to do any or all of the following on my / our behalf:
                                            <br />
                                            a) to represent, act and appear for me / us;
                                            <br />
                                            b) to conduct and prosecute (or defend) the same and all proceedings that may be 
                                            taken in respect of any application connected with the same or any decree of 
                                            order passed therein; c) to sign, file, verify, present, and receive all types 
                                            of documents including plaints, statements, pleadings, appeals, cross 
                                            objections, petitions, applications, revision, withdrawal, compromise or 
                                            affidavits;
                                            <br />
                                            d) to withdraw or compromise or submit to arbitration any differences or 
                                            disputes that may arise touching or in any manner relating to the said case;<br /> 
                                            &nbsp;e) to deposit, draw and receive money, cheques, cash and grant receipts 
                                            thereof;<br /> &nbsp;f) to do all other acts and things which may be necessary or 
                                            expedient, in the opinion of the Advocates, to be done</td>
                                    </tr>
                                    <tr>
                                        <td class="style5" colspan="3">
                                            I/We do hereby agree to ratify and confirm all acts done by the Advocate or his 
                                            substitute in the matter as my/our own acts, as if done by me/us to all intents 
                                            and purposes</td>
                                    </tr>
                                    <tr>
                                        <td class="style5" colspan="3">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style5">
                                            Advocate Name</td>
                                        <td class="style6" colspan="2">
                                            <asp:Label ID="padd2" runat="server" Text=""></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style5">
                                            Enrollment No:</td>
                                        <td class="style6" colspan="2">
                                            <asp:Label ID="padd3" runat="server" Text=""></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style5">
                                            Mobile No:</td>
                                        <td class="style6" colspan="2">
                                            <asp:Label ID="padd4" runat="server" Text=""></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style5">
                                            Signature:</td>
                                        <td class="style6" colspan="2">
                                            <asp:Image ID="imgEmp0" runat="server" Height="50px" 
                                                ImageUrl='<%# Bind("ppath") %>' Width="50px" />
                                        </td>
                                    </tr>
                                </table>
                            </asp:Panel>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align:center">
                            <asp:Button ID="Button5" runat="server" Text="Print" 
                                OnClientClick="return pPrintPanel();" onclick="Button5_Click"/>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </asp:View>
        </asp:MultiView>
       
    </div>
    </form>
</body>
</html>

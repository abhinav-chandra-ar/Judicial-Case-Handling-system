<%@ Page Title="" Language="C#" MasterPageFile="~/PoliceMasterPage2.master" AutoEventWireup="true" CodeFile="PoliceHomepage1.aspx.cs" Inherits="PoliceHomepage1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
      <%--edited--%>
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
                    <section class="content">
                    <div class="row">
                        <div class="col-xs-12">
                           
                            
                            <div class="box">
                                <div class="box-header">
                                    <h3 class="box-title">Police Details</h3>                                    
                                </div><!-- /.box-header -->
                                 
                                <div class="box-body table-responsive">
                                
                          <div>

        <asp:DataList ID="DataList1" runat="server" Font-Names="Verdana" Font-Size="Small" GridLines="Both"  Width="600px">

           <%-- <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />--%>

            <%--<HeaderStyle BackColor="#333333" Font-Bold="True" Font-Size="Large" ForeColor="White"

                HorizontalAlign="Center" VerticalAlign="Middle" />--%>

          <%--  <HeaderTemplate>

                Hospital Details</HeaderTemplate>
--%>
            <ItemStyle BackColor="White" ForeColor="Black"  Font-Names="Verdana" Font-Size="Small" />

            <ItemTemplate>
           
               <%-- <asp:Image ID="imgEmp" runat="server" Width="200px" Height="200px" ImageUrl='<%# Bind("uphoto") %>' style="padding-left:40px"/><br />
                 <br />
                 <br />--%>

                <div style="margin-left: 10px; margin-top: 10px">
                 <b>Police  ID:</b>

                <asp:Label ID="Label5" runat="server" Text='<%# Bind("pid") %>' ></asp:Label>

                </div>
                 <br />

                <div style="margin-left: 10px;">
                 <b>Police  ID Proof:</b>

                <asp:Label ID="Label11" runat="server" Text='<%# Bind("pcode") %>' ></asp:Label>

                </div>
                 <br />

                <div style="margin-left: 10px;">
                <b>Name:</b>

                <asp:Label ID="lblCName" runat="server" Text='<%# Bind("name") %>' ></asp:Label>  

                </div>
                 <br />

                <div style="margin-left: 10px;">
                 <b>Police Station:</b>

                <asp:Label ID="Label3" runat="server" Text='<%# Bind("pstation") %>' ></asp:Label>  

                </div>
                 <br />

                <div style="margin-left: 10px;">
                <b>Gender:</b>

                <asp:Label ID="lblName" runat="server" Text='<%# Bind("gender") %>'></asp:Label>

                </div>
                 <br />

                <div style="margin-left: 10px;">
               <b> Date of Birth:</b>

                <asp:Label ID="lblCity" runat="server" Text=' <%# Bind("dob") %>'></asp:Label>

                </div>
                 <br />

                <div style="margin-left: 10px;">
                  <b>Address:</b>

                <asp:Label ID="Label4" runat="server" Text='<%# Bind("address") %>'></asp:Label>

                </div>
                 <br />

                <div style="margin-left: 10px;">
                <b>Mobile No:</b>

                <asp:Label ID="lblCountry" runat="server" Text='<%# Bind("phone") %>'></asp:Label>

                </div>
                 <br />

                <div style="margin-left: 10px;">
                 <b>Email:</b>

                <asp:Label ID="Label2" runat="server" Text='<%# Bind("email") %>'></asp:Label>

                </div>
                 <br />
                  
                <div style="margin-left: 10px;">
                  <b>UserName</b>

                <asp:Label ID="Label8" runat="server" Text='<%# Bind("username") %>'></asp:Label>

                </div>
                 <br />
                 
            </ItemTemplate>

        </asp:DataList>

    </div>
                                     
                                </div><!-- /.box-body -->
                               
                            </div><!-- /.box -->
                        </div>
                    </div>

                </section><!-- /.content -->
</asp:Content>


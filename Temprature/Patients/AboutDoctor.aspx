<%@ Page Title="" Language="C#" MasterPageFile="~/Patients/PatientMasterPage.master" AutoEventWireup="true" CodeFile="AboutDoctor.aspx.cs" Inherits="Patients_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
      <!-- Custom Theme files -->
    <link href="docdetail/css/style.css" rel="stylesheet" type="text/css" media="all" />
    <!-- font-awesome icons -->
    <link href="docdetail/css/font-awesome.css" rel="stylesheet">
    <!-- //font-awesome icons -->
    <!--Google Fonts-->
    <link href="//fonts.googleapis.com/css?family=Raleway:300,400,500,600,800" rel="stylesheet">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div style="display: flex; justify-content: center;">
        <asp:DetailsView ID="dView" runat="server" AutoGenerateRows="False">
            <Fields>
                <asp:TemplateField>
                    <ItemTemplate>
                        <div class="profile">
                            <div class="wrap">
                                <div class="profile-main" style="width: 75%">
                                    <div class="profile-pic wthree">
                                        <img src='<%# Eval("Image") %>'>
                                        <h2><%# Eval("D_Name") %></h2>
                                        <p><%# Eval("Specialist") %></p>
                                    </div>
                                    <div class="w3-message">
                                        <h5>About Your Doctor</h5>
                                        <p><%# Eval("Degree") %></p>
                                        <p><%# Eval("Experience") %> years Experience</p>
                                        <p><%# Eval("Hospital") %></p>
                                        <p><%# Eval("Description") %></p>
                                        <p><%# Eval("mnumber") %></p>
                                        <div class="w3ls-touch">
                                        </div>
                                    </div>

                                </div>


                            </div>
                        </div>
                    </ItemTemplate>
                </asp:TemplateField>
            </Fields>
        </asp:DetailsView>
    </div>
</asp:Content>


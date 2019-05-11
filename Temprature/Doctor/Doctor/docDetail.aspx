<%@ Page Title="" Language="C#" MasterPageFile="~/homePage.master" AutoEventWireup="true" CodeFile="docDetail.aspx.cs" Inherits="docDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <!-- Custom Theme files -->
    <link href="docdetail/css/style.css" rel="stylesheet" type="text/css" media="all" />
    <!-- font-awesome icons -->
    <link href="docdetail/css/font-awesome.css" rel="stylesheet">
    <!-- //font-awesome icons -->
    <!--Google Fonts-->
    <link href="//fonts.googleapis.com/css?family=Raleway:300,400,500,600,800" rel="stylesheet">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="display: flex; justify-content: center;">
        <asp:detailsview id="dView" runat="server" autogeneraterows="False">
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
                                        <h5>About Me</h5>
                                        <br />Degree : <br />
                                        <br />

                                        <p><%# Eval("Degree") %></p>
                                        <br />Experience : <br />
                                        
                                        <p><%# Eval("Experience") %> years Experience</p>
                                        <br />Hospital : <br />
                                        <p><%# Eval("Hospital") %></p>
                                        <br />Description<br />
                                        <p><%# Eval("Description") %></p>
                                        <br />Contact number : <br />
                                       
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
        </asp:detailsview>
    </div>

    <script>
        $("#123").hide();
    </script>
</asp:Content>


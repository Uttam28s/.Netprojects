<%@ Page Title="" Language="C#" MasterPageFile="~/homePage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class=""></div>
    <style>
        .bottom-left {
            position: absolute;
            bottom: 8px;
            left: 16px;
        }

        .top-left {
            position: absolute;
            top: 8px;
            left: 16px;
        }

        .top-right {
            position: absolute;
            top: 8px;
            right: 16px;
        }

        .Font {
            font-family: 'Times New Roman', Times, serif;
        }

        .bottom-right {
            position: absolute;
            bottom: 8px;
            right: 16px;
        }

        .centered {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
        }
    </style>
    <div style="text-align: center; position: relative; color: white;">
        <div style="filter: blur(4px); -webkit-filter: blur(4px);">
            <img src="images/Main.jpg" height="750px" width="1750px">
        </div>

        <div class="centered  " style="border: double; margin: 30px; background-color: #F5F5DC; border: 1px solid black; opacity: 0.6; filter: alpha(opacity=60);">
            <div style="margin: 5%; font-weight: bold; color: #000000;">
                <asp:hyperlink id="HyperLink1" runat="server" navigateurl="~/Login/LogIn.aspx" font-size="XX-Large" borderstyle="Groove" cssclass="Font" forecolor="Black" font-underline="True"> MONITOR YOUR RELATIVES FROM ANY WHERE </asp:hyperlink>
            </div>
        </div>

    </div>
    <section class="wrapper">
        <!-- //market-->
        <div class="market-updates">
            <div class="col-md-3 market-update-gd">
                <div class="market-update-block clr-block-2">
                    <div class="col-md-4 market-update-right">
                        <i class="fa fa-eye"></i>
                    </div>
                    <div class="col-md-8 market-update-left">
                        <h4>Visitors</h4>
                        <h3>13,500</h3>
                        <p>Which is our inspiration</p>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
            <div class="col-md-3 market-update-gd">
                <div class="market-update-block clr-block-1">
                    <div class="col-md-4 market-update-right">
                        <i class="fa fa-users"></i>
                    </div>
                    <div class="col-md-8 market-update-left">
                        <h4>Users</h4>
                        <h3>1,250</h3>
                        <p>They are satisfy with this site.</p>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
            <div class="col-md-3 market-update-gd">
                <div class="market-update-block clr-block-3">
                    <div class="col-md-4 market-update-right">
                        <i class="fa fa-stethoscope" style="font-size: 52px; color: white"></i>

                    </div>
                    <div class="col-md-8 market-update-left">
                        <h4>Doctors Connected</h4>
                        <h3>1,500</h3>
                        <p>they all are connect with us.</p>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
            <div class="col-md-3 market-update-gd">
                <div class="market-update-block clr-block-4">
                    <div class="col-md-4 market-update-right">
                        <i class="fa fa-hospital-o" style="font-size: 48px; color: white"></i>
                    </div>
                    <div class="col-md-8 market-update-left">
                        <h4>Hospital Connected</h4>
                        <h3>1,500</h3>
                        <p>thanks for they support.</p>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
        <!-- //market-->
    </section>
    <br />
    <br />
    <br />
    <br />

    <div class="col-md-6" style="text-align: center; position: relative; color: white;">
        <div style="filter: blur(4px); -webkit-filter: blur(4px);">
            <img src="dc.jpg" height="600px" width="750px">
        </div>
        <div class="centered  " style="border: double; margin: 30px; background-color: #F5F5DC; border: 1px solid black; opacity: 0.6; filter: alpha(opacity=60);">
            <div style="margin: 5%; font-weight: bold; color: #000000;">
                <asp:hyperlink id="HyperLink2" runat="server" navigateurl="~/Doctor/Doctor/finddoctor.aspx" font-size="XX-Large" borderstyle="Groove" cssclass="Font" forecolor="Black" font-underline="True"> FIND THE SPECIALIST OF YOUR DISEASES</asp:hyperlink>
            </div>
        </div>
    </div>
    <div class="col-md-6" style="text-align: center; position: relative; color: white;">
        <div style="filter: blur(4px); -webkit-filter: blur(4px);">
            <img src="h.jpg" height="600px" width="730px">
        </div>
        <div class="centered  " style="border: double; margin: 30px; background-color: #F5F5DC; border: 1px solid black; opacity: 0.6; filter: alpha(opacity=60);">
            <div style="margin: 5%; font-weight: bold; color: #000000;">
                <asp:hyperlink id="HyperLink3" runat="server" navigateurl="~/Doctor/Doctor/findHospital.aspx" font-size="XX-Large" borderstyle="Groove" cssclass="Font" forecolor="Black" font-underline="True"> FIND THE BEST HOSPITAL NEAR BY YOU </asp:hyperlink>
            </div>
        </div>
    </div>
    <br />
 <br />
     <br />
    <br />

    <div class="col-md-12" style="text-align: center; margin-top:50px; position: relative; color: white;">
        <div style="filter: blur(4px); -webkit-filter: blur(4px);">
            <img src="2_slider.jpg" height="530px" width="1700px">
        </div>
        <div class="centered  " style="border: double; margin: 30px; background-color: #F5F5DC; border: 1px solid black; opacity: 0.6; filter: alpha(opacity=60);">
            <div style="margin: 5%; font-weight: bold; color: #000000;">
                <asp:hyperlink id="HyperLink4" runat="server" navigateurl="~/Login/LogIn.aspx" font-size="XX-Large" borderstyle="Groove" cssclass="Font" forecolor="Black" font-underline="True"> IF YOU ARE DOCTOR THEN PATIENT IS YOUR RESPONSIBILITY. </asp:hyperlink>
            </div>
        </div>
    </div>

       <br />
 <br />
     <br />
    <br />
    <div class="col-md-12" style="text-align: center; margin-top:50px; position: relative; color: white;">
        <div style="filter: blur(4px); -webkit-filter: blur(4px);">
            <img src="1_slider.jpg" height="530px" width="1700px">
        </div>
        <div class="centered  " style="border: double; margin: 30px; background-color: #F5F5DC; border: 1px solid black; opacity: 0.6; filter: alpha(opacity=60);">
            <div style="margin: 5%; font-weight: bold; color: #000000;">
                <asp:hyperlink id="HyperLink5" runat="server" navigateurl="~/Login/LogIn.aspx" font-size="XX-Large" borderstyle="Groove" cssclass="Font" forecolor="Black" font-underline="True"> IF YOU ARE PATIENT THEN DOCTOR IS YOUR GOD. </asp:hyperlink>
            </div>
        </div>
    </div>
    <div>
        <style>
            .container {
                position: relative;
               
            }

            .image {
                display: block;
                width: 100%;
                height: auto;
            }

            .overlay {
                position: absolute;
                bottom: 0;
                left: 0;
                right: 0;
                background-color: #008CBA;
                overflow: hidden;
                width: 100%;
                height: 100%;
                -webkit-transform: scale(0);
                -ms-transform: scale(0);
                transform: scale(0);
                -webkit-transition: .3s ease;
                transition: .3s ease;
            }

            .container:hover .overlay {
                -webkit-transform: scale(1);
                -ms-transform: scale(1);
                transform: scale(1);
            }

            .text {
                color: white;
                font-size: 20px;
                position: absolute;
                top: 50%;
                left: 50%;
                -webkit-transform: translate(-50%, -50%);
                -ms-transform: translate(-50%, -50%);
                transform: translate(-50%, -50%);
                text-align: center;
            }
            .lable{
                text-align:center;
                font-family:'Times New Roman', Times, serif;
                margin:inherit;
            }
        </style>
        <br />
        <div class="lable">
            <asp:Label ID="Label1" runat="server" Text="Label" Font-Size="50" CssClass="lable" ForeColor="White" Font-Bold="False" Font-Underline="True">Our Team</asp:Label>
        </div>
        <br />
        <div class="container col-lg-3">
            <img src="jay.JPG" alt="Avatar" class="image">
            <div class="overlay">
                <div class="text">
                    <h3 class="badge-success">Dhola Jay</h3> 
                    <br />
                    <h5>CEO & Founder</h5>
                </div>
            </div>
        </div>
        <div class="container col-lg-3">
            <img src="Parth.JPG" alt="Avatar" class="image">
            <div class="overlay">
                <div class="text"><h3 class="badge-success">Parth Dhameliya</h3> 
                    <br />
                    <h5>Designer</h5></div>
            </div>
        </div>
        <div class="container col-lg-3">
            <img src="Manthan.JPG" alt="Avatar" class="image">
            <div class="overlay">
                <div class="text"><h3 class="badge-success">Vanani Manthan</h3> 
                    <br />
                    <h5>Art Director</h5></div>
            </div>
        </div>
        <div class="container col-lg-3">
            <img src="Uttam.jpeg" alt="Avatar" class="image">
            <div class="overlay">
                <div class="text"><h3 class="badge-success">Moradiya Uttam</h3> 
                    <br />
                    <h5>CTO & HR</h5></div>
            </div>
        </div>

    </div>
</asp:Content>


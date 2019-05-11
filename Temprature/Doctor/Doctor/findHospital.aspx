<%@ Page Title="" Language="C#" MasterPageFile="~/homePage.master" AutoEventWireup="true" CodeFile="findHospital.aspx.cs" Inherits="findHospital" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- bootstrap-css -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- //bootstrap-css -->
    <!-- Custom CSS -->
    <link href="../css/style.css" rel='stylesheet' type='text/css' />
    <link href="../css/style-responsive.css" rel="stylesheet" />
    <link rel="stylesheet" href="../css/lightbox.css">
    <!-- font CSS -->
    <link href='//fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
    <!-- font-awesome icons -->
    <link rel="stylesheet" href="../css/font.css" type="text/css" />
    <link href="../css/font-awesome.css" rel="stylesheet">
    <!-- //font-awesome icons -->
    <script src="../js/jquery2.0.3.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section class="wrapper">
        <!-- gallery -->
        <!-- gallery -->
        <div class="gallery">
            <h2 class="w3ls_head">Hospital</h2>
            <div class="gallery-grids">
                <div class="gallery-top-grids">
                    <asp:repeater id="docRepeat" runat="server">
                            <ItemTemplate>
                              <div class="col-sm-4 gallery-grids-left">
                                <div class="gallery-grid">
                                    <asp:Label ID="did" runat="server" Visible="false" Text='<%# Eval("Hno") %>'></asp:Label> 
                                    <a class="example-image-link" href="HosDetails.aspx?uid=<%# Eval("Hno") %>" >
                                        <img src='<%# Eval("Image") %>' height="300" width="150" />
                                        <div class="captn" style="height:200px; width:325px">
                                            <h4><asp:Label ID="DName" runat="server" Text='<%# Eval("Name") %>' /></h4>
                                            <p><asp:Label ID="spec" runat="server" Text='<%# Eval("Mono") %>' /></p>
                                        </div>
                                    </a>
                                </div>
                            </div>
                                </ItemTemplate>
                                </asp:repeater>
                    <div class="clearfix"></div>
                </div>
                <div class="clearfix"></div>
                <script src="js/lightbox-plus-jquery.min.js"> </script>

            </div>
        </div>
        <!-- //gallery -->
        <!--main content end-->
    </section>
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/jquery.dcjqaccordion.2.7.js"></script>
    <script src="../js/scripts.js"></script>
    <script src="../js/jquery.slimscroll.js"></script>
    <script src="../js/jquery.nicescroll.js"></script>
    <!--[if lte IE 8]><script language="javascript" type="text/javascript" src="js/flot-chart/excanvas.min.js"></script><![endif]-->
    <script src="../js/jquery.scrollTo.js"></script>
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/homePage.master" AutoEventWireup="true" CodeFile="HosDetails.aspx.cs" Inherits="_Default" %>

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
        <asp:DetailsView ID="dView" runat="server" AutoGenerateRows="False">
            <Fields>
                <asp:TemplateField>
                    <ItemTemplate>
                        <div class="profile">
                            <div class="wrap">
                                <div class="profile-main" style="width: 75%">
                                    <div class="profile-pic wthree">
                                        <img src='<%# Eval("Image") %>'>
                                        <h2><%# Eval("Name") %></h2>
                                        <p><%# Eval("Mono") %></p>
                                    </div>
                                    <div class="w3-message">
                                        <h5>About Hospital</h5>
                                        <br />
                                        <h3>Address:</h3>
                                        <p><%# Eval("Address") %></p>
                                        <br />
                                        SERVICES:
                                        <p class="focus"><%# Eval("Dises") %></p>
                                        <br />
                                        <h5 style="line-height: 2.8; font-size:18px;color:#333333">DESCRIPTION OF HOSPITAL :</h5>
                                        <h4 style="text-align: justify; text-justify: inter-word; color:#999999;line-height: 1.6;"><%# Eval("Description") %></h4>
                                        <br /> Time  :<br />
                                        <p><%# Eval("Time") %></p>
                                    
                                        <div class="w3ls-touch">
                                        </div>
                                    </div>

                                </div>
                                 <h3>My Google Maps Demo</h3>
    <!--The div element for the map -->
    <div id="map"></div>
    <script>
// Initialize and add the map
function initMap() {
  // The location of Uluru
  var uluru = {lat: -25.344, lng: 131.036};
  // The map, centered at Uluru
  var map = new google.maps.Map(
      document.getElementById('map'), {zoom: 4, center: uluru});
  // The marker, positioned at Uluru
  var marker = new google.maps.Marker({position: uluru, map: map});
}
    </script>
    <!--Load the API from the specified URL
    * The async attribute allows the browser to render the page while the API loads
    * The key parameter will contain your own API key (which is not needed for this tutorial)
    * The callback parameter executes the initMap() function
    -->
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=YOUR_API_KEY&callback=initMap">
    </script>

                            </div>
                        </div>
                    </ItemTemplate>
                </asp:TemplateField>
            </Fields>
        </asp:DetailsView>
    </div>

</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/Patients/PatientMasterPage.master" AutoEventWireup="true" CodeFile="Patient.aspx.cs" Inherits="Patients_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="agil-info-calendar">
        <!-- calendar -->
         <h1 class="form text-center" style="font-family: Helvetica; color: black;">PATIENT LIVE DATA</h1>
        <br />
        <div class="col-md-6 agile-calendar">
            <div class="calendar-widget">
                <div class="panel-heading ui-sortable-handle">
                    <span class="panel-icon">
                        <i class="fa fa-fire"></i>
                    </span>
                    <span class="panel-title">Temprature </span>
                </div>
                <!-- grids -->
                <div class="agile-calendar-grid">
                    <div class="page">

                        <div class="w3l-calendar-left">
                            <div class="calendar-heading">

                                <div class="js-gauge--1 text-center ">
                                    <%--js-gauge  gauge--%>
                                    <br />
                                    <br />
                                    <p style="font-size:50px; font-style :oblique" id="temperature">45.00 </p>
                                   
                                </div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-6 agile-calendar">
            <div class="calendar-widget">
                <div class="panel-heading ui-sortable-handle">
                    <span class="panel-icon">
                        <i class="fa fa-fire"></i>
                    </span>
                    <span class="panel-title">HEARTBEAT </span>
                </div>
                <!-- grids -->
                <div class="agile-calendar-grid">
                    <div class="page">

                        <div class="w3l-calendar-left">
                            <div class="calendar-heading">

                                <div class="js-gauge--1 text-center ">
                                    <%--js-gauge  gauge--%>
                                    <br />
                                    <br />
                                    <p style="font-size:50px; font-style :oblique" id="temperature">75.00 </p>
                                   
                                </div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- //calendar -->
        <%--<div class="col-md-6 w3agile-notifications">
            <div class="notifications">
                <!--notification start-->
                <div class="panel-heading ui-sortable-handle">
                    <span class="panel-icon">
                        <i class="fa fa-heartbeat"></i>
                    </span>
                    <span class="panel-title">HeartBeat </span>
                </div>
                <div class="notify-w3ls">
                    <div id="chartContainer" style="height: 265px; width: 100%;"></div>
                    <script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
                </div>

                <!--notification end-->
            </div>
        </div>
        <div class="clearfix"></div>
    </div>--%>
    <%----------------------------------------------------------------------------------------------------------------------------------------%>
    <%--<div class="container">
        <%--<div class="fa-2x fa-border">

            <%--<h1 class="form text-center" style="font-family: Helvetica; color: black;">PATIENT LIVE DATA</h1>--%>

            <%--<div class="outer-w3-agile mt-3 text-center col-xl-8 ml-xl-3">
                <div class="w3_agile_gauge_meter">
                    <div class="js-gauge js-gauge--1 gauge"></div>
                </div>
            </div>--%>
            <%--<div class="w3_agile_gauge_meter col-lg-offset-2">
                <div class="js-gauge js-gauge--1 gauge"></div>
                <br />
                <asp:Label ID="Label1" runat="server" Text="Temprature : " Font-Size="20" ForeColor="White" Font-Bold="True"></asp:Label>
                <asp:Label ID="Label2" runat="server" Text="00.00" Font-Size="20" ForeColor="White" Font-Bold="True"></asp:Label>
            </div>--%>
            <%--<div class="col-lg-offset-8">
                <%--<asp:Label ID="LableTemp" runat="server" Text="Temprature : " Font-Size="20" ForeColor="White" Font-Bold="True"></asp:Label>--%>
                <%--<asp:Label ID="temperature" runat="server" Text="00.00" Font-Size="20" ForeColor="White" Font-Bold="True"></asp:Label><br />--%>
                <%--<br />--%>
                <%--<asp:Label ID="LabelHumi" runat="server" Text="Humidity : " Font-Size="20" ForeColor="White" Font-Bold="True"></asp:Label>
                <asp:Label ID="humidity" runat="server" Text="00.00" Font-Size="20" Font-Bold="True" ForeColor="White"></asp:Label>--%>
            <%--</div>--%>
            <%--     <p style='line-height: 60px; font-family: Helvetica; color:black; font-size: 50px;' id="temperature">
                        <img src='temperature.png' height="60px" width="60px" style='vertical-align: middle' />
                        00.00
                    </p>
                    <br />
                    <p style='line-height: 60px; font-family: Helvetica; color:black; font-size: 50px;' id="humidity">
                        <img src='humidity.png' height="60px" width="60px" style='vertical-align: middle' />
                        00.00
                    </p>--%>
        <%--</div>--%>

    <%--</div>--%>

    <script src="../js/raphael-min.js"></script>
    <script src="../js/kuma-gauge.jquery.js"></script>

    <script>
        window.onload = function () {
            loaddata();
        };
        var humid1;
        var temper2;
        function loaddata() {
            var ip = "192.168.43.156";
            var url = "http://" + ip + "/data"
            $.getJSON(url, function (data) {
                var val = data;
                humid1 = data['Humidity'];
                temper2 = data['temperature'];
                document.getElementById("temperature").innerHTML = temper2;
                document.getElementById("humidity").innerHTML = humid1;
                console.log(data['Humidity']);
            });
        }
        $('.js-gauge--1').kumaGauge({
            value: temper2/*Math.floor((Math.random() * 99) + 1)*/
        });

        $('.js-gauge--1').kumaGauge('update', {
            value: temper2/*Math.floor((Math.random() * 99) + 1)*/,
            fill: '#F34A53',
            gaugeBackground: '#1E4147',
            gaugeWidth: 10,
            showNeedle: false,
            label: {
                display: true,
                left: 'Min',
                right: 'Max',
                fontFamily: 'Helvetica',
                fontColor: '#1E4147',
                fontSize: '11',
                fontWeight: 'bold'
            }
        });


        var update = setInterval(function () {
            var newVal = temper2/*Math.floor((Math.random() * 99) + 1)*/;
            $('.js-gauge--1').kumaGauge('update', {
                value: newVal
            });
        }, 1000);
        window.setInterval(function () {
            loaddata();
        }, 1000);
    </script>

    <script>
        window.onload = function () {

            var dps = []; // dataPoints
            var chart = new CanvasJS.Chart("chartContainer", {
                title: {
                    text: "Dynamic Data"
                },
                axisY: {
                    includeZero: false
                },
                data: [{
                    type: "line",
                    dataPoints: dps
                }]
            });

            var xVal = 0;
            var yVal = 100;
            var updateInterval = 1000;
            var dataLength = 20; // number of dataPoints visible at any point

            var updateChart = function (count) {

                count = count || 1;

                for (var j = 0; j < count; j++) {
                    yVal = yVal + Math.round(5 + Math.random() * (-5 - 5));
                    dps.push({
                        x: xVal,
                        y: yVal
                    });
                    xVal++;
                }

                if (dps.length > dataLength) {
                    dps.shift();
                }

                chart.render();
            };

            updateChart(dataLength);
            setInterval(function () { updateChart() }, updateInterval);

        }
    </script>

</asp:Content>


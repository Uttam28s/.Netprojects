<%@ Page Title="" Language="C#" MasterPageFile="~/Doctor/DoctorMasterPage.master" AutoEventWireup="true" CodeFile="Trackdata.aspx.cs" Inherits="Doctor_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <asp:Repeater ID="Repeater1" runat="server">  
            <ItemTemplate>  
                <div>  
                    <table>  
                        <tr>  
                            <th><%#Eval("FirstName")%></th>  
                        </tr>  
                        <tr>  
                            <td>Temprature :- </td>  
                            <td><p style="font-size:25px; font-style :oblique" id="temperature">00.00</p></td>  
                        </tr>  
                        <tr>  
                            <td>Heartbeat :- </td>  
                            <td><p style="font-size:25px; font-style :oblique" id="pulseRate">00.00</p></td>
                        </tr>
                    </table>  
                </div>  
            </ItemTemplate>  
        </asp:Repeater> 
    <script src="../js/raphael-min.js"></script>
    <script src="../js/kuma-gauge.jquery.js"></script>

    <script>
        window.onload = function () {
            loaddata();
        };
        var humid1;
        var temper2;
        function loaddata() {
            var ip = "192.168.0.108";
            var url = "http://" + ip + "/data"
            $.getJSON(url, function (data) {
                var val = data;
                humid1 = data['pulseRate'];
                temper2 = data['temperature'];
                document.getElementById("temperature").innerHTML = temper2;
                document.getElementById("pulseRate").innerHTML = humid1;
                console.log(data['pulseRate']);
            });
        }
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


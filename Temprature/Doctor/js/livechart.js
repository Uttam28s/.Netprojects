//var humid;
//var temper;
//window.onload = function () {
//    loaddata();
//};
//function loaddata() {
//    var ip = "192.168.0.106";
//    var url = "http://" + ip + "/data"
//    $.getJSON(url, function (data) {
//        var val = data;
//        humid = data['Humidity'];
//        temper = data['temperature'];
//        document.getElementById("temperature").innerHTML = "<img src = 'temperature.png' height=\"60px\" width=\"60px\" style='vertical-align: middle' />  " + temper;
//        document.getElementById("humidity").innerHTML = "<img src = 'humidity.png' height=\"60px\" width=\"60px\" style='vertical-align: middle' />  " + humid;
//        console.log(data['Humidity']);
        
//    });
//}
//window.setInterval(function () {
//    loaddata();
//}, 5000);

//-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------



//window.onload = function () {
//var dps = []; // dataPoints
//var chart = new CanvasJS.Chart("chartContainer", {
//    title: {
//        text: "Dynamic Data"
//    },
//    axisY: {
//        includeZero: false
//    },
//    data: [{
//        type: "line",
//        dataPoints: dps
//    }]
//});

//var xVal = 0;
//var yVal = 100;
//var updateInterval = 1000;
//var dataLength = 20; // number of dataPoints visible at any point

//var updateChart = function (count) {

//    count = count || 1;

//    for (var j = 0; j < count; j++) {
//        yVal = 50;
//        dps.push({
//            x: xVal,
//            y: yVal
//        });
//        xVal++;
//    }

//    if (dps.length > dataLength) {
//        dps.shift();
//    }

//    chart.render();
//};

//updateChart(dataLength);
//setInterval(function () { updateChart() }, updateInterval);

//        }
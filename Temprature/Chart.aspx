<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Chart.aspx.cs" Inherits="Chart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <script src="https://cdn.zingchart.com/zingchart.min.js"></script>

  <style>
   
    body {
      height: 100%;
      width: 100%;
    }
    
    #myChart {
      height: 100%;
      width: 100%;
      min-height: 150px;
    }
    
    .zc-ref {
      display: none;
    }
  </style>

</head>

<body>
        <form id="form1" runat="server">
       
  <div id='myChart'><a class="zc-ref">Charts for Temprature</a></div>
  <script>
   window.feed = function (callback) {
    var tick = {};
    tick.plot0 = 25//Math.ceil((Math.random() * 500));
    callback(JSON.stringify(tick));
};

var myConfig = {
    type: "gauge",
    globals: {
        fontSize: 25
    },
    plotarea: {
        marginTop: 80
    },
    plot: {
        size: '100%',
        valueBox: {
            placement: 'center',
            text: '%v', //default
            fontSize: 35,
            rules: [{
                rule: '%v >= 45',
                text: '%v<br>Bad'
            }, {
                rule: '%v < 45 && %v > 35',
                text: '%v<br> Fair'
            }, {
                rule: '%v < 35 && %v > 25',
                text: '%v<br>Good'
            }, {
                rule: '%v < 25  && %v >10',
                text: '%v<br>Bad'
            }]
        }
    },
    tooltip: {
        borderRadius: 5
    },
    scaleR: {
        aperture: 28,
        minValue: 15,
        maxValue: 50,
        step: 50,
        center: {
            visible: false
        },
        tick: {
            visible: false
        },
        item: {
            offsetR: 0,
            rules: [{
                rule: '%i == 9',
                offsetX: 15
            }]
        },
        labels: ['300', '', '', '', '', '', '580', '640', '700', '750', '', '850'],
        ring: {
            size: 50,
            rules: [{
                rule: '%v < 25  && %v >10',
                backgroundColor: '#E53935'
            }, {
                rule: '%v > 35 && %v < 45',
                backgroundColor: '#EF5350'
            }, {
                rule: '%v >= 25 && %v < 35',
                backgroundColor: '#FFA726'
            }, {
                    rule: '%v >= 45',
                backgroundColor: '#29B6F6'
            }]
        }
    },
    refresh: {
        type: "feed",
        transport: "js",
        url: "feed()",
        interval: 1500,
        resetTimeout: 1000
    },
    series: [{
        values: [755], // starting value
        backgroundColor: 'black',
        indicator: [10, 10, 10, 10, 0.75],
        animation: {
            effect: 2,
            method: 1,
            sequence: 4,
            speed: 900
        },
    }]
};

zingchart.render({
    id: 'myChart',
    data: myConfig,
    height: 500,
    width: '100%'
});
  </script>     

      <script>
		window.onload = function() {
            loaddata();
        };
		function loaddata(){
                var ip = document.getElementById('ip').value;
				var url = "http://"+ ip + "/data"
				$.getJSON(url, function(data) {
                    var val= data;
                    var humid=data['Humidity'];
                    var temper=data['temperature'];
                    document.getElementById("temperature").innerHTML = "<img src = 'temperature.png' height=\"60px\" width=\"60px\" style='vertical-align: middle' />  " +temper;
                    document.getElementById("humidity").innerHTML = "<img src = 'humidity.png' height=\"60px\" width=\"60px\" style='vertical-align: middle' />  " + humid;
                    
                    console.log(data['Humidity']);
                    
            });
           
            
        }
        window.setInterval(function(){
        loaddata();
            }, 5000);
	
	</script>

    </form>
</body>
</html>

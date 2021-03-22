<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link rel="stylesheet" href="/naman/resources/css/host/statistics.css">

<script src="/naman/resources/js/highcharts.js"></script>
<script src="/naman/resources/js/series-label.js"></script>
<script src="/naman/resources/js/exporting.js"></script>
<script src="/naman/resources/js/export-data.js"></script>
<script src="/naman/resources/js/accessibility.js"></script>
    
<section>

	<!-- 현황 -->
	<div id="status">
		<div id="date">${today}
	</div>
		<div id="list">
			<div class="each">
				<div class="num">${dto.checkin}</div>
				<div>체크인</div>
			</div>
			<div class="each">
				<div class="num">${dto.checkout}</div>
				<div>체크아웃</div>
			</div>
			<div class="each">
				<div class="num">${dto.booking}</div>
				<div>예약</div>
			</div>
			<div class="each">
				<div class="num">${dto.rcancel}</div>
				<div>예약 취소</div>
			</div>
		</div>
	</div>

	<!-- 차트 -->
	<div id="charts">
		<div class="chart" id="salesPerMonth"></div>
		<div class="chart" id="roomsPerDate"></div>
	</div>

</section>


<script>
Highcharts.chart('salesPerMonth', {

    title: {
        text: '월별 매출'
    }, 

    // subtitle: {
    //     text: 'Source: thesolarfoundation.com'
    // },

    yAxis: {
        title: {
            text: '(단위: 만원)'
        },
        tickInterval: 20,
        labels: {
            format: '{value}'
        }
    },

    xAxis: {
        accessibility: {
            rangeDescription: 'Range: 1 to 12'
        },
        tickInterval: 1
    },

    // legend: {
    //     layout: 'vertical',
    //     align: 'right',
    //     verticalAlign: 'middle'
    // },

    plotOptions: {
        series: {
            label: {
                connectorAllowed: false
            },
            pointStart: 1
        }
    },

    series: [{
        name: '매출',
        data: [
			<c:forEach items="${sales}" var="sale" varStatus="status">
			${sale.sales / 100000}
 			<c:if test="${status.index < sales.size() - 1}">
			,
			</c:if> 
			</c:forEach>	  	
        	]
    // }, {
    //     name: 'Manufacturing',
    //     data: [24916, 24064, 29742, 29851, 32490, 30282, 38121, 40434]
    // }, {
    //     name: 'Sales & Distribution',
    //     data: [11744, 17722, 16005, 19771, 20185, 24377, 32147, 39387]
    // }, {
    //     name: 'Project Development',
    //     data: [null, null, 7988, 12169, 15112, 22452, 34400, 34227]
    // }, {
    //     name: 'Other',
    //     data: [12908, 5948, 8105, 11248, 8989, 11816, 18274, 18111]
    }],

    responsive: {
        rules: [{
            condition: {
                maxWidth: 500
            },
            chartOptions: {
                legend: {
                    layout: 'horizontal',
                    align: 'center',
                    verticalAlign: 'bottom'
                }
            }
        }]
    }

    });


    

Highcharts.chart('roomsPerDate', {
    chart: {
        type: 'pie'
    },
    title: {
        text: '객실 가동률'
    },
    subtitle: {
        text: '${today} 기준'
    },

    accessibility: {
        announceNewData: {
            enabled: true
        },
        point: {
            valueSuffix: '%'
        }
    },

    plotOptions: {
        series: {
            dataLabels: {
                enabled: true,
                format: '{point.name}: {point.y:.1f}%'
            }
        }
    },

    tooltip: {
        headerFormat: '<span style="font-size:11px">{series.name}</span><br>',
        pointFormat: '<span style="color:{point.color}">{point.name}</span>: <b>{point.y:.2f}%</b> of total<br/>'
    },

    series: [
        {
            name: "객실명",
            colorByPoint: true,
            data: [
            	<c:forEach items="${result}" var="r" varStatus="status">
                {
                    name: "${r.roomCategory}",
                    y: ${r.cap/total*100},
                    drilldown: "${r.roomCategory}"
                }
     			<c:if test="${status.index < result.size() - 1}">
    			,
    			</c:if> 
    			</c:forEach>	

            ]
        }
    ]
});
</script>

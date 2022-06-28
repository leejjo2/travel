<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<style type="text/css">
.body-main {
	max-width: 850px;
}

#chart-container {
	width: 476px;
	box-sizing: border-box;
	padding: 20px;
	height: 400px;
	border: 1px solid #ccc;
	text-align: center;
}

.body-container {width: 900px; margin: 50px auto 10px }
</style>
<link rel="stylesheet" href="${pageContext.request.contextPath}/dist/admin/build/css/tabs.css" type="text/css">

<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/highcharts-3d.js"></script>

<script type="text/javascript">
$(function(){
	$("#tab-1").addClass("active");

	$("ul.tabs li").click(function() {
		let tab = $(this).attr("data-tab");
		
		$("ul.tabs li").each(function(){
			$(this).removeClass("active");
		});
		
		$("#tab-"+tab).addClass("active");
		
		var url = "${pageContext.request.contextPath}/admin/memberManage/list";	
		location.href = url;
	});
});

$(function(){
	let url = "${pageContext.request.contextPath}/admin/memberManage/ageAnalysis";
	
	$.getJSON(url, function(data){
		let titles = [];
		let values = [];
		
		for(let i=0; i<data.list.length; i++){
			titles.push(data.list[i].section);
			values.push(data.list[i].count);
		}
		
		Highcharts.chart('chart-container', {

		    title: {
		        text: "연령대별 회원수"
		    },

		    yAxis: {
		        title: {
		            text: '인원(명)'
		        }
		    },

		    xAxis: {
				categories: titles
		    },


		    series: [{
		    	type : 'column',
		    	colorByPoint : true,
		    	name : '인원수',
		    	showInLegend : false,
		    	data : values
		    }]
		});
	});
	

});
</script>

<div class="right_col" role="main" style="min-height: 4645px;">
	<div class="body-container">
	    <div class="body-title">
			<h2><i class="icofont-users"></i> 회원 관리 </h2>
	    </div>
	    
	    <div class="body-main ms-30">
			<div>
				<ul class="tabs">
					<li id="tab-0" data-tab="0"><i class="icofont-waiter-alt"></i> 회원 리스트</li>
					<li id="tab-1" data-tab="1"><i class="icofont-spreadsheet"></i> 회원분석</li>
				</ul>
			</div>
			<div id="tab-content" style="clear:both; padding: 20px 10px 0;">
				<div id="chart-container"></div>
			</div>
	    </div>
	</div>
	
</div>
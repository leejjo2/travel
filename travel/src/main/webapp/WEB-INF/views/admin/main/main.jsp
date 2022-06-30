<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<style type="text/css">
* {
  margin: 0;
  padding: 0;
}
#chart-container {
  position: relative;
  height: 350px;
  overflow: hidden;
}
#chart-container1 {
  position: relative;
  height: 250px;
  overflow: hidden;
}
#chart-container2 {
  position: relative;
  height: 250px;
  overflow: hidden;
}
</style>





<div class="right_col" role="main" style="min-height: 1758px;">
          <!-- top tiles -->
          <div class="row" style="display: inline-block; width:1000px;">
          <div class="tile_count">
            <div class="col-md-2 col-sm-4  tile_stats_count">
              <span class="count_top"><i class="fa fa-user"></i> 총 회원수</span>
              <div class="count">15</div>
            </div>
            <div class="col-md-2 col-sm-4  tile_stats_count">
              <span class="count_top"><i class="fa fa-clock-o"></i> 오늘 접속자 수</span>
              <div class="count">59</div>
            </div>
            <div class="col-md-2 col-sm-4  tile_stats_count">
              <span class="count_top"><i class="fa fa-user"></i> 총 게시물 수</span>
              <div class="count green">78</div>
            </div>
            <div class="col-md-2 col-sm-4  tile_stats_count">
              <span class="count_top"><i class="fa fa-user"></i> 총 결제건수</span>
              <div class="count">25</div>
            </div>
            <div class="col-md-2 col-sm-4  tile_stats_count">
              <span class="count_top"><i class="fa fa-user"></i> 총 매출액(만)</span>
              <div class="count">125</div>
            </div>
          </div>
        </div>
          <!-- /top tiles -->

          <br>

          <div class="row">
            <div class="col-md-12 col-sm-12 ">
              <div class="x_panel tile overflow_hidden">
                <div class="x_title">
                  <h2>최근 접속자수</h2>
                  <ul class="nav navbar-right panel_toolbox">
                    <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                    </li>
                    <li class="dropdown">
                      <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                      <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                          <a class="dropdown-item" href="#">Settings 1</a>
                          <a class="dropdown-item" href="#">Settings 2</a>
                        </div>
                    </li>
                    <li><a class="close-link"><i class="fa fa-close"></i></a>
                    </li>
                  </ul>
                  <div class="clearfix"></div>
                </div>
                <div id="chart-container"></div>
              </div>
            </div>
            <div class="col-md-6 col-sm-6 ">
              <div class="x_panel tile fixed_height_320 overflow_hidden">
                <div class="x_title">
                  <h2>게시판 별 업로드 비율</h2>
                  <ul class="nav navbar-right panel_toolbox">
                    <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                    </li>
                    <li class="dropdown">
                      <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                      <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                          <a class="dropdown-item" href="#">Settings 1</a>
                          <a class="dropdown-item" href="#">Settings 2</a>
                        </div>
                    </li>
                    <li><a class="close-link"><i class="fa fa-close"></i></a>
                    </li>
                  </ul>
                  <div class="clearfix"></div>
                </div>
                <div id="chart-container1"></div>
              </div>
            </div>
            <div class="col-md-6 col-sm-6 ">
              <div class="x_panel tile fixed_height_320 overflow_hidden">
                <div class="x_title">
                  <h2>연령대별 회원분포</h2>
                  <ul class="nav navbar-right panel_toolbox">
                    <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                    </li>
                    <li class="dropdown">
                      <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                      <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                          <a class="dropdown-item" href="#">Settings 1</a>
                          <a class="dropdown-item" href="#">Settings 2</a>
                        </div>
                    </li>
                    <li><a class="close-link"><i class="fa fa-close"></i></a>
                    </li>
                  </ul>
                  <div class="clearfix"></div>
                </div>
                <div id="chart-container2"></div>
                	
              </div>
            </div>


          </div>
        </div>

<script src="https://fastly.jsdelivr.net/npm/echarts@5.3.3/dist/echarts.min.js"></script>
<script type="text/javascript">
$(function(){
	let url = "${pageContext.request.contextPath}/admin/memberManage/ageAnalysis";
	$.getJSON(url, function(data){
		let datas = [];
	
		for(let i=0; i<data.list.length; i++){
			datas.push({value : data.list[i].count, name : data.list[i].section});
		}

		var dom = document.getElementById('chart-container2');
		var myChart = echarts.init(dom, null, {
 			 renderer: 'canvas',
 			 useDirtyRect: false
		});
		var app = {};

		var option;

		option = {
			  tooltip: {
			    trigger: 'item'
			  },
			  legend: {
				orient:'vertical',
			    left: 'left'
			  },
			  series: [
			    {
			      name: 'Access From',
			      type: 'pie',
			      radius: ['40%', '70%'],
			      avoidLabelOverlap: false,
			      label: {
			        show: false,
			        position: 'center'
			      },
			      emphasis: {
			        label: {
			          show: true,
			          fontSize: '40',
			          fontWeight: 'bold'
			        }
			      },
			      labelLine: {
			        show: false
			      },
			      data: datas
			    }
			  ]
			};

		if (option && typeof option === 'object') {
		  myChart.setOption(option);
		}

		window.addEventListener('resize', myChart.resize);
	});
});

var dom = document.getElementById('chart-container1');
var myChart = echarts.init(dom, null, {
  renderer: 'canvas',
  useDirtyRect: false
});
var app = {};

var option;

option = {
  tooltip: {
    trigger: 'item'
  },
  legend: {
    orient: 'vertical',
    left: 'left'
  },
  series: [
    {
      name: 'Access From',
      type: 'pie',
      radius: '50%',
      data: [
        { value: 5, name: '테마별 코스추천' },
        { value: 12, name: '숙소' },
        { value: 8, name: '액티비티' },
        { value: 15, name: '같이가요' },
        { value: 28, name: '여행코스공유' },
        { value: 14, name: '자유소통공간' }
      ],
      emphasis: {
        itemStyle: {
          shadowBlur: 10,
          shadowOffsetX: 0,
          shadowColor: 'rgba(0, 0, 0, 0.5)'
        }
      }
    }
  ]
};

if (option && typeof option === 'object') {
  myChart.setOption(option);
}

window.addEventListener('resize', myChart.resize);

var dom = document.getElementById('chart-container');
var myChart = echarts.init(dom, null, {
  renderer: 'canvas',
  useDirtyRect: false
});
var app = {};

var option;

option = {
  tooltip: {
    trigger: 'axis'
  },
  legend: {
    data: ['총회원수', '총접속자수', '총게시물수', '총결제건수', '총매출액(만)']
  },
  grid: {
    left: '3%',
    right: '4%',
    bottom: '3%',
    containLabel: true
  },
  toolbox: {
    feature: {
      saveAsImage: {}
    }
  },
  xAxis: {
    type: 'category',
    boundaryGap: false,
    data: ['22/06/25', '22/06/26', '22/06/27', '22/06/28', '22/06/29', '22/06/30', '22/07/01']
  },
  yAxis: {
    type: 'value'
  },
  series: [
    {
      name: '총회원수',
      type: 'line',
      data: [2, 3, 5, 8, 10, 13, 15]
    },
    {
      name: '총접속자수',
      type: 'line',
      data: [5, 6, 10, 15, 30, 46, 59]
    },
    {
      name: '총게시물수',
      type: 'line',
      data: [1, 10, 15, 19, 36, 68, 78]
    },
    {
      name: '총결제건수',
      type: 'line',
      data: [0, 2, 4, 5, 12, 15, 25]
    },
    {
      name: '총매출액(만)',
      type: 'line',
      data: [0, 10, 40, 50, 68, 85, 125]
    }
  ]
};

if (option && typeof option === 'object') {
  myChart.setOption(option);
}

window.addEventListener('resize', myChart.resize);
</script>
        
    
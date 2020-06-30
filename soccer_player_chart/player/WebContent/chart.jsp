<%@page import="dao.Dao"%>
<%@page import="entity.Bean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>echarts-多柱子柱状图</title>
    <style>
        body, html {
            width: 100%;
            height: 100%;
        }
        .section {
            width: 915px;
            border: 1px solid #ccc;
        }
        #barsDemo {
            width: 100%;
            height: 400px;
        }
    </style>
</head>
<body>

<div class="section">
    <div id="barsDemo"></div>
</div>
<script type="text/javascript" src="chart/jquery-1.8.3.js"> alert(0);</script>
  <script src="chart/echarts.min.js"></script>
<script>
    $(function () {
    	
        initData();
    });

    //生成数据
    function initData() {
    	
        var legendData = ['胜场数', '输场数'];
        var bgColorList = ['#FBB730', '#31BDF2'];
         var axisLabel =new Array();
        	

        var seriesValue = [];
        var winnum=new Array();
        var losenum=new Array();

         $.post(
        		 "Chart",
        		 {},
        		 function(data){
  
        			 for(var i=0;i<data.length;i++)
        				 {
        				    axisLabel.push(data[i].name);
        				 	winnum.push(data[i].win);
        				 	losenum.push(data[i].lose);
        				 }
        			 
        			 
        			 var seriesDataVal1 = {
        	                 barWidth: 10,//柱状条宽度
        	                 name:legendData[0],
        	                 type:'bar',
        	                 itemStyle: {
        	                     normal: {
        	                         show: true,//鼠标悬停时显示label数据
        	                         barBorderRadius: [10, 10, 10, 10],//柱形图圆角，初始化效果
        	                          color: bgColorList[0]
        	                     }
        	                 },
        	                 label: {
        	                     normal: {
        	                         show: true, //显示数据
        	                         position: 'top'//显示数据位置 'top/right/left/insideLeft/insideRight/insideTop/insideBottom'
        	                     }
        	                 } ,
        	                 data:winnum
        	             };
        	             seriesValue.push(seriesDataVal1);
        	    
        	    var seriesDataVal2 = {
        	            barWidth: 10,//柱状条宽度
        	            name:legendData[1],
        	            type:'bar',
        	            itemStyle: {
        	                normal: {
        	                    show: true,//鼠标悬停时显示label数据
        	                    barBorderRadius: [10, 10, 10, 10],//柱形图圆角，初始化效果
        	                     color: bgColorList[1]
        	                }
        	            },
        	            label: {
        	                normal: {
        	                    show: true, //显示数据
        	                    position: 'top'//显示数据位置 'top/right/left/insideLeft/insideRight/insideTop/insideBottom'
        	                }
        	            } ,
        	            data:losenum
        	        };
        	        seriesValue.push(seriesDataVal2);
        	        buildChart(legendData, axisLabel, seriesValue);
        			 
        		 },
        		 "json"
        		 );
         
      }

    //生成Echarts图形
    function buildChart(legendData, axisLabel, seriesValue) {
        var chart = document.getElementById('barsDemo');
        var echart = echarts.init(chart);
        var option = {
            title: {
                text: "赛事信息可视化",//正标题
                x: "center", //标题水平方向位置
                y: "0", //标题竖直方向位置
                textStyle: {
                    fontSize: 18,
                    fontWeight: 'normal',
                    color: '#666'
                }
            },
            tooltip: {
                trigger: 'axis',
                axisPointer: {
                    type: 'shadow'//阴影，若需要为直线，则值为'line'
                }
            },
            toolbox: {
                show: true,
                feature: {
                    saveAsImage: {show: true}
                }
            },
            legend: {
                data: legendData,
                y: 'bottom'//图例说明文字设置

            },
            grid: {
                left: '3%',
                right: '4%',
                bottom: '10%',
                top:'10%',
                containLabel: true
            },
            xAxis: [{
                min: 0,
                type: 'category', //纵向柱状图，若需要为横向，则此处值为'value'， 下面 yAxis 的type值为'category'
                data: axisLabel
            }],
            yAxis: [{
                min: 0,
                type: 'value',
                splitArea: {show: false}
            }],
            label: {
                normal: { //显示bar数据
                    show: true,
                    position: 'top'
                }
            },
            series: seriesValue
        };

        echart.setOption(option);
    }
</script>
</body>
</html>

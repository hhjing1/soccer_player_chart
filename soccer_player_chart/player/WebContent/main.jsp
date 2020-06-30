<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<title>球队赛事信息统计</title>
<link rel="stylesheet" href="layui/layui.css">
</head>
<body class="layui-layout-body">
	<div class="layui-layout layui-layout-admin">
		<div class="layui-header">
			<div class="layui-logo">赛事相关信息</div>
		</div>

		<div class="layui-side layui-bg-black">
			<div class="layui-side-scroll">
				<!-- 左侧导航区域（可配合layui已有的垂直导航） -->
				<ul class="layui-nav layui-nav-tree" >
				    <li class="layui-nav-item"><a href="add.jsp" target="frame">赛事信息增加</a></li>
				    <li class="layui-nav-item"><a href="select.jsp" target="frame">赛事信息查询</a></li>
					<li class="layui-nav-item"><a href="ServletAll" target="frame">赛事信息浏览</a></li>
					<li class="layui-nav-item"><a href="chart.jsp"     target="frame">赛事信息柱状图</a></li>
				</ul>
			</div>
		</div>
		<div class="layui-body">
			<!-- 内容主体区域 -->
			<iframe name="frame" width="100%" height="100%"
				style="border: 1px solid #CCC;"></iframe>
		</div>

	</div>

	<script src="layui/layui.all.js"></script>
	<script>
//JavaScript代码区域
layui.use('element', function(){
  var element = layui.element; 
});
</script>
</body>
</html>
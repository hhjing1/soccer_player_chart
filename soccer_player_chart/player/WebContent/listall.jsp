<%@page import="dao.Dao"%>
<%@page import="entity.Bean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" type="text/css" href="css/style.css">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>浏览需求</title>
</head>
<body>
<body>
<%
        Object message = request.getAttribute("message");
        if (message != null && !"".equals(message)) {
    %>
    <script type="text/javascript">
               alert("<%=request.getAttribute("message")%>");
    </script>
    <%
        }
    %>
   <div align="center">
		<h2>球队赛事信息统计表</h2>
		<br>
		<table border="1" >
		  <thead>
		    <tr>
		      <th>球队编号</th>
		      <th>球队名称</th>
		      <th>胜场数</th>
		      <th>输场数</th>
		    
		    </tr>
		  </thead>
		  <tbody>
		  <c:forEach items="${listbean}" var="item">
		    <tr>
		      <td>${item.id}</td>
		      <td>${item.name}</td>
		      <td>${item.win}</td>
		      <td>${item.lose}</td>
		   </tr>
		  </c:forEach>
		  </tbody>
		</table>
	</div>
<script type="text/javascript">


</script>
</body>
</html>
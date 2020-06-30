<%@page import="entity.Bean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>查询显示</title>
</head>
<body>
<%
 Bean b2=(Bean)request.getAttribute("Bean");

%>
<div align="center">
  <form action="" method="post">

  <table>
  <tr>
  		<td>球队编号：</td>
  		<td><input type="text" name="" value="<%=b2.getId()%>"></td>
  	</tr>
  	<tr>
  		<td>球队名字：</td>
  		<td><input type="text" name="" value="<%=b2.getName()%>"></td>
  	</tr>
  	<tr>
  		<td>胜场数：</td>
  		<td><input type="text" name="" value="<%=b2.getWin()%>"></td>
  	</tr>
  	<tr>
  		<td>输场数：</td>
  		<td><input type="text" name="" value="<%= b2.getLose()%>"></td>
  	</tr>
  		
  </table>

 
 </form>
 </div>
</body>
</html>
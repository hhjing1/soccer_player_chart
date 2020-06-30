<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<div align="center">
<h2 align="center">赛事信息查询</h2>
 <hr/>
	<form align="center" action="selectNameServlet" method="post">
	  <div>
	   <table>
	      <tr>
	        <td>根据名字进行球赛查询：</td>
	      </tr>
	      <tr>
	      	<td>请输入需要查询球队的名字：</td>
	      	<td><input type="text" name="selectname" value=""></td>
	      </tr>
	      <tr>
	        <input type="submit" value="确定" id="">
	      </tr>
	   </table>
	  </div>
	</form>
	</div>
</body>
</html>
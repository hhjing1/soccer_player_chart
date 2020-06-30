<%@ page contentType="text/html; charset=utf-8" import="java.sql.*" errorPage="error.jsp"%>
<html>
<head>
<title>添加球员信息</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
<style type="text/css">
body{
background:url(img/pink.jpg);
}
</style>
</head>
<body>

  <script type="text/javascript">
  
//重制按钮处添加onclick调用formReset
  function formReset()
  {
  	  document.getElementById("form").reset();
  }
  
  //判断增添信息是否为空，若为空，则弹框进行显示
  function check(){
	  $id=document.getElementById("id").value;
	  $name=document.getElementById("name").value;
	  $win=document.getElementById("win").value;
	  $lose=document.getElementById("lose").value;
	  
	  if(""==$id){
		  alert("球队编号不能为空，请输入球队编号！");
		  return false;
	  }
	 if(""==$name){
		  alert("球队姓名不能为空，请输入球队姓名！");
		  return false;
	  }
	  if(""==$win){
		  alert("胜场数不能为空，请输入胜场数！");
		  return false;
	  }
	  if(""==$lose){
		  alert("输场数不能为空，请输入输场数！");
		  return false;
	  }

	  
		  return true;
	  
  }
  
  </script>
<div align="center">
	<form action="addServlet" method="post" id="form">
		<h2>添加球队信息</h2>
		<br>
		<table style="width: 50%">
			<tr>
				<th>球队编号：</th>
				<td><input  id="id" name="id" type="text"></td>
			</tr>
			<tr>
				<th>球队名称：</th>
				<td><input id="name" name="name" type="text"></td>
			</tr>
			 <tr>
                <th>胜场数:</th>
                <td><input id="win" name="win" type="text"></td>
            </tr>
			<tr>
				<th>输场数:</th>
				<td><input id="lose" name="lose" type="text"></td>
			</tr>

				<td colspan="2"><input type="submit" name="submit" value="添加" onclick="return check()"> <input type="reset" value="重置" onclick="formReset()"></td>
			</tr>
		</table>
	</form>
	</div>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>canvas</title>
</head>

<body>

	<canvas id="myCanvas" width="200" height="100" style="border:1px solid #c3c3c3;">
		Your browser does not support the canvas element.
	</canvas>
	
	<script type="text/javascript">

	var c=document.getElementById("myCanvas");
	var cxt=c.getContext("2d");
	cxt.moveTo(10,10);//先移动到10，10
	cxt.lineTo(150,50);//然后画线到150,50
	cxt.lineTo(10,50);//再画线到10,50
	cxt.stroke();//显示

</script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-1.12.4.js"></script>
<script type="text/javascript">

$(function(){
	$('h1').html($('div').find('wf').html());
	$('div').hide();
	
});

</script>
</head>
<body>
	<h1>jstl etc</h1>
	
	<p>before</p>
	<div><c:import url="http://www.kma.go.kr/weather/forecast/mid-term-rss3.jsp?stnId=109"></c:import> </div>
	<p>after</p>
</body>
</html>
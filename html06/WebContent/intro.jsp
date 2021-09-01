<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/frame.css"/>
<style type="text/css">
section>div>img{
	width:400px;
}
</style>
<script type="text/javascript">
var div,ul,arr;
var num=0;
window.onload=function(){
	div=document.querySelector("section>div");
	ul=div.querySelector('ul');
	var nodeArr=div.querySelectorAll('img');
	arr=Array.from(nodeArr);
	
};
function nextImg(){
	var ele = arr.shift();
	div.innerHTML=ele.outerHTML;
	arr.push(ele);
}
</script>
</head>
<body>
<%@ include file="template/header.jspf" %>
<%@ include file="template/menu.jspf" %>
<div>
	<ul>
		<li><img src="imgs/big01.jfif"/></li>
		<li><img src="imgs/big02.jfif"/></li>
		<li><img src="imgs/big03.jfif"/></li>
		<li><img src="imgs/big04.jfif"/></li>
		<li><img src="imgs/big05.jfif"/></li>
		<li><img src="imgs/big06.jfif"/></li>
	</ul>
</div>
<%@ include file="template/footer.jspf" %>
</body>
</html>
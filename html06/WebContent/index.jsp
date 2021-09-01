<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/frame.css"/>
<style type="text/css">
section{}
section>div{
	width:400px;
	height:400px;
	overflow:hidden;
	margin: 0px auto;
	
	position: relative;
}
section>div>ul{
	list-style: none;
	padding: 0px;
	height: 400px;
	width: 2400px;
}
section>div>ul>li{
	float: left;
}
section>div>ul>li>img{
	width:400px;
}
section>div>ul~a{
	width:50px;
	height:400px;
	background-color: rgba(0,0,0,0.2);
	display: inline-block;
	position: absolute;
	left:0px;
	top:0px;
	color: white;
	text-align: center;
	line-height: 400px;
	text-decoration: none;
	font-size:32pt;
	font-weight: bold;
}
section>div>a:last-child{
	left:350px;
}
</style>
<script type="text/javascript">
var div,ul,nxt,prv,inter;
window.onload=function(){
	div=document.querySelector("section>div");
	ul=div.querySelector("ul");
	nxt=document.createElement('a');
	prv=document.createElement('a');
	nxt.appendChild(document.createTextNode('>'));
	prv.appendChild(document.createTextNode('<'));
	nxt.href='#';
	prv.href='#';
	div.appendChild(prv);
	div.appendChild(nxt);
	ul.style.marginLeft='0px';
	nxt.onclick=function(){
		nextImg();
		return false;
		};
	prv.onclick=function(){
		prevImg();
		return false;
		};
	inter=setTimeout(function(){nxt.click();},3000);
};
function prevImg(){
	var x=parseInt(ul.style.marginLeft);
	if(x<0){
		ul.style.marginLeft=x+400+"px";
	}else{
		ul.style.marginLeft="-2000px";
	}
}
function nextImg(){
	var x=parseInt(ul.style.marginLeft);
	if(x>-2000){
		ul.style.marginLeft=x-400+"px";
	}else{
		ul.style.marginLeft=0+"px";
	}
	clearTimeout(inter);
	inter=setTimeout(function(){nxt.click();},3000);
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
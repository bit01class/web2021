<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/frame.css" />
<style type="text/css">
h2{}
h2+form{
	width: 100%;
}
h2+form>div{
	border-bottom-style: dashed;
	border-bottom-color:gray;
	border-bottom-width: 1px;
	margin-bottom: 10px;
}
h2+form>div>label{
	display: inline-block;
	width: 150px;
	text-align: center;
}
h2+form>div>label+input{}
h2+form>div:first-child>label+input{
	width:450px;
}
h2+form>div>textarea{
	width:450px;
	margin-left: 150px;
}
h2+form>div>button{
	float: left;
	width: 33%;
}

</style>
<script type="text/javascript">
var form,id,err;
	window.onload=function(){
		form=document.querySelector('form');
		id=form.querySelector('#id');
		form.onsubmit=function(){
			var ele=form.querySelector('div>span');
			if(ele!=null)ele.parentElement.removeChild(ele);
			if(id.value==''){
				err=document.createElement('span');
				err.appendChild(document.createTextNode('이름을 입력하세요'));
				form.querySelectorAll('div')[1].appendChild(err);
				return false;
			}
		};
		
	};
</script>
</head>
<body>
<%@ include file="template/header.jspf" %>
<%@ include file="template/menu.jspf" %>
<h2>입력페이지</h2>
<form action="insert.jsp">
	<div>
		<label for="sub">sub</label><input type="text" name="sub" id="sub"/>
	</div>
	<div>
		<label for="id">id</label><input type="text" name="id" id="id"/>
	</div>
	<div>
		<textarea name="content"></textarea>
	</div>
	<div>
		<button type="submit">입력</button>
		<button type="reset">취소</button>
		<button type="button">뒤로</button>
	</div>
</form>
<%@ include file="template/footer.jspf" %>
</body>
</html>












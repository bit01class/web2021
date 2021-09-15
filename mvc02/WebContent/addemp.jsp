<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="template/header.jspf" %>
<script type="text/javascript">
	$(function(){
		<%=request.getAttribute("select")%>
	});		
</script>
</head>
<body>
<%@ include file="template/menu.jspf" %>
<h2>입력 페이지</h2>
<form method="post">
	<div>
		<label>empno</label><input type="text" name="empno" value="<%=request.getAttribute("empno")==null?"":request.getAttribute("empno")%>"/>
	</div>
	<div>
		<label>ename</label><input type="text" name="ename" value="<%=request.getAttribute("ename")==null?"":request.getAttribute("ename")%>"/>
	</div>
	<div>
		<label>sal</label><input type="text" name="sal" value="<%=request.getAttribute("sal")==null?"":request.getAttribute("sal")%>"/>
	</div>
	<div>
		<button>입력</button>
		<button type="reset">취소</button>
		<button type="button">뒤로</button>
	</div>
</form>
<%@ include file="template/footer.jspf" %>
</body>
</html>
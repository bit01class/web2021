<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>파일업로드</h1>
	<form action="upload.do" method="post" enctype="multipart/form-data">
		<div>
			<label>empno</label><input type="text" name="empno" />
		</div>
		<div>
			<label>ename</label><input type="text" name="ename" />
		</div>
		<div>
			<label>file</label><input type="file" name="file" />
		</div>
		<div>
			<button>전송</button>
		</div>
	</form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>el 표현</h1>
	<%
	String msg="문자열";
	
	pageContext.setAttribute("msg", msg);
	pageContext.setAttribute("su", 1234);
	pageContext.setAttribute("boo", true);
	pageContext.setAttribute("obj", null);
	pageContext.setAttribute("time", new java.util.Date());
	
	String[] arr1={"java","DB","web","framework"};
	pageContext.setAttribute("arr1", arr1);
	
	java.util.ArrayList list=new java.util.ArrayList();
	list.add("item1");
	list.add("item2");
	list.add("item3");
	list.add("item4");
	pageContext.setAttribute("arr2", list);
	
	java.util.HashMap map=new java.util.HashMap();
	map.put("key1", "val1");
	map.put("key2","val2");
	map.put("key3","val3");
	map.put("key4","val4");
	pageContext.setAttribute("arr3", map);
	
	kr.co.tjoeun.model.DeptDto bean=null;
	bean=new kr.co.tjoeun.model.DeptDto();
	bean.setDeptno(1111);
	bean.setDname("test");
	bean.setLoc("test2");
	pageContext.setAttribute("bean", bean);
	%>
	<div>문자열: ${msg }</div>
	<div>숫자: ${su }</div>
	<div>boolean: ${boo }</div>
	<div>object: ${obj }</div>
	<div>date: ${time }</div>
	<div>arr1: ${arr1 }</div>
	<ul>
		<li>${arr1[0] }</li>
		<li>${arr1[1] }</li>
		<li>${arr1[2] }</li>
		<li>${arr1[3] }</li>
	</ul>
	<ul>
		<li>${arr2.get(0) }</li>
		<li>${arr2.get(1) }</li>
		<li>${arr2.get(2) }</li>
		<li>${arr2.get(3) }</li>
	</ul>
	<ul>
		<li>${arr3.key1 }</li>
		<li>${arr3.key2 }</li>
		<li>${arr3.key3 }</li>
		<li>${arr3.key4 }</li>
	</ul>
	<ul>
		<li>${bean.deptno }</li>
		<li>${bean.dname }</li>
		<li>${bean.loc }</li>
	</ul>
	<jsp:useBean id="bean2" class="kr.co.tjoeun.model.DeptDto" scope="page"></jsp:useBean>
	<jsp:setProperty property="deptno" name="bean2" value="2222"/>
	<jsp:setProperty property="dname" name="bean2" value="user1"/>
	<jsp:setProperty property="loc" name="bean2" value="test"/>
	<ul>
		<li>${bean2.deptno }</li>
		<li>${bean2.dname }</li>
		<li>${bean2.loc }</li>
	</ul>
</body>
</html>













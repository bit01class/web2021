<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
table {
	width: 80%;
}
</style>
</head>
<body>
	<h1>EL Language(el 표현식)</h1>
	<table>
		<thead>
			<tr>
				<th>자료형</th>
				<th>표현</th>
				<th>el</th>
				<th>java</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>숫자(정수)</td>
				<td>&#36;{-1234}</td>
				<td>${-1234 }</td>
				<td><%=-1234%></td>
			</tr>
			<tr>
				<td>숫자(실수)</td>
				<td>&#36;{3.14}</td>
				<td>${3.14 }</td>
				<td><%=3.14 %></td>
			</tr>
			<tr>
				<td>숫자(정수연산)</td>
				<td>&#36;{1234+1}</td>
				<td>${1234+1 }</td>
				<td><%=1234+1%></td>
			</tr>
			<tr>
				<td>숫자(실수연산)</td>
				<td>&#36;{3.14+0.86}</td>
				<td>${3.14+0.86 }</td>
				<td><%=3.14+0.86 %></td>
			</tr>
			<tr>
				<td>숫자(정수연산)</td>
				<td>&#36;{1234-1}</td>
				<td>${1234-1 }</td>
				<td><%=1234-1%></td>
			</tr>
			<tr>
				<td>숫자(정수연산)</td>
				<td>&#36;{4*2}</td>
				<td>${4*2 }</td>
				<td><%=4*2%></td>
			</tr>
			<tr>
				<td>숫자(정수연산)</td>
				<td>&#36;{4/2}</td>
				<td>${4/2 }</td>
				<td><%=4/2%></td>
			</tr>
			<tr>
				<td>숫자(정수연산)</td>
				<td>&#36;{5/2}</td>
				<td>${5/2 }</td>
				<td><%=5/2%></td>
			</tr>
			<tr>
				<td>숫자(정수연산)</td>
				<td>&#36;{5%2}</td>
				<td>${5%2 }</td>
				<td><%=5%2%></td>
			</tr>
			<tr>
				<td>숫자(정수연산)</td>
				<td>&#36;{5 div 2}</td>
				<td>${5 / 2 }</td>
				<td><%=5/2%></td>
			</tr>
			<tr>
				<td>숫자(정수연산)</td>
				<td>&#36;{5 mod 2}</td>
				<td>${5 mod 2 }</td>
				<td><%=5%2%></td>
			</tr>
			<tr>
				<td>문자열</td>
				<td>&#36;{"문'자'열"}</td>
				<td>${"문'자'열" }</td>
				<td><%="문자열" %></td>
			</tr>
			<tr>
				<td>문자열</td>
				<td>&#36;{'문""자'}</td>
				<td>${'문""자' }</td>
				<td><%='열' %></td>
			</tr>
			<tr>
				<td>boolean</td>
				<td>&#36;{true}</td>
				<td>${true }</td>
				<td><%=true %></td>
			</tr>
			<tr>
				<td>boolean</td>
				<td>&#36;{false}</td>
				<td>${false }</td>
				<td><%=false %></td>
			</tr>
			<tr>
				<td>NULL</td>
				<td>&#36;{null}</td>
				<td>${null }</td>
				<% Object obj=null; %>
				<td><%=obj %></td>
			</tr>
			<tr>
				<td>비교</td>
				<td>&#36;{5==3}</td>
				<td>${5==3 }</td>
				<td><%=5==3 %></td>
			</tr>
			<tr>
				<td>비교</td>
				<td>&#36;{5!=3}</td>
				<td>${5!=3 }</td>
				<td><%=5!=3 %></td>
			</tr>
			<tr>
				<td>비교</td>
				<td>&#36;{5>3}</td>
				<td>${5>3 }</td>
				<td><%=5>3 %></td>
			</tr>
			<tr>
				<td>비교</td>
				<td>&#36;{5<3}</td>
				<td>${5<3 }</td>
				<td><%=5<3 %></td>
			</tr>
			<tr>
				<td>비교</td>
				<td>&#36;{5 eq 3}</td>
				<td>${5 eq 3 }</td>
				<td><%=5==3 %></td>
			</tr>
			<tr>
				<td>비교</td>
				<td>&#36;{5 lt 3}</td>
				<td>${5 lt 3 }</td>
				<td><%=5<3 %></td>
			</tr>
			<tr>
				<td>비교</td>
				<td>&#36;{5 gt 3}</td>
				<td>${5 gt 3 }</td>
				<td><%=5>3 %></td>
			</tr>
			<tr>
				<td>비교</td>
				<td>&#36;{5 ge 3}</td>
				<td>${5 ge 3 }</td>
				<td><%=5>=3 %></td>
			</tr>
			<tr>
				<td>비교</td>
				<td>&#36;{5 le 3}</td>
				<td>${5 le 3 }</td>
				<td><%=5<=3 %></td>
			</tr>
			<tr>
				<td></td>
				<td>&#36;{}</td>
				<td></td>
				<td><%=obj %></td>
			</tr>
			<tr>
				<td></td>
				<td>&#36;{}</td>
				<td></td>
				<td><%=obj %></td>
			</tr>
			<tr>
				<td></td>
				<td>&#36;{}</td>
				<td></td>
				<td><%=obj %></td>
			</tr>
			<tr>
				<td></td>
				<td>&#36;{}</td>
				<td></td>
				<td><%=obj %></td>
			</tr>
			<tr>
				<td></td>
				<td>&#36;{}</td>
				<td></td>
				<td><%=obj %></td>
			</tr>
			<tr>
				<td></td>
				<td>&#36;{}</td>
				<td></td>
				<td><%=obj %></td>
			</tr>
		</tbody>
	</table>
</body>
</html>
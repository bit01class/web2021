<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="kr.co.tjoeun.model.EmpDto" %>
<%
EmpDto bean=(EmpDto)request.getAttribute("bean");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="template/header.jspf" %>
<script type="text/javascript">
	$(function(){
		if($('h2').text()=='상세 페이지'){
			$('button[type="reset"]').attr('type','button').text('삭제').click(function(){
var form=$('<form method="post"/>').css('display','none')
.append('<input type="text" name="idx" value="<%=bean.getEmpno()%>"/>');
$('form').after(form);
form.submit();
			});
			$('form input').hide();
			$('form input').parent().append(function(){
				return '<span>'+$(this).find('input').val()+'</span>'
			});
			$('form').submit(function(){
				location.href="edit.do?idx="+<%=bean.getEmpno()%>;
				return false;
			});
		}else{
			$('form').submit(function(){
				$('input').css('background-color','white');
				$('.err').remove();
				if($('input').eq(1).val()==''){
					$('input').eq(1).css('background-color','red').select();
					$('input').eq(1).after('<span class="err">이름을입력하세요</span>');
					return false;
				}
				if(parseInt($('input').eq(3).val())<=0){
					$('input').eq(3).css('background-color','red').select();
					$('input').eq(3).after('<span class="err">연봉을입력하세요</span>');
					return false;
				}
				
				return true;
			});
		}
		$('form button').last().click(function(){
			history.back();
		});
	});
</script>
</head>
<body>
<%@ include file="template/menu.jspf" %>
	<h2><%=request.getAttribute("title") %></h2>
	<form method="post">
		<div>
			<label>empno</label><input type="text" name="empno" value="<%=bean.getEmpno() %>" readonly/>
		</div>
		<div>
			<label>ename</label><input type="text" name="ename" value="<%=bean.getEname() %>" />
		</div>
		<div>
			<label>hiredate</label><input type="text" name="hiredate" value="<%=bean.getHiredate() %>" disabled/>
		</div>
		<div>
			<label>sal</label><input type="text" name="sal" value="<%=bean.getSal() %>" />
		</div>
		<div>
			<button>수정</button>
			<button type="reset">취소</button>
			<button type="button">뒤로</button>
		</div>
	</form>
<%@ include file="template/footer.jspf" %>
</body>
</html>
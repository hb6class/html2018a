<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		int a=3/0;
	%>
	<form action="ex03.jsp">
		<input type="text" name="id" />
		<button>전송</button>
	</form>
</body>
</html>
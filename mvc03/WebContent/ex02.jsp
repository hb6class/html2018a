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
		int su=4321;
		request.setAttribute("num", su);
		String msg=request.getParameter("msg");
	%>
	<h1>ex02 page</h1>
	<jsp:include page="ex03.jsp"></jsp:include>
	<p><%=msg %></p>
</body>
</html>
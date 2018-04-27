<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="bean" class="com.bit.bean.StudentBean"></jsp:useBean>
	<%
		bean.setNum(2).setName("user2").setKor(90).setEng(80).setMath(70);
		
		out.print(bean);
	%>
</body>
</html>
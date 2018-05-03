<%@page import="com.bit.model.GuestDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/960.css"/>
<style type="text/css">
	.content>form{
		width: 80%;
		margin: 10px auto 50px auto;
	}
	.content>form>div{
		/* text-align: center; */
	}
	.content>form>div>button{
		margin: 10px 3px;
	}
	.content>form>div>label{
		width: 30%;
		text-align:center;
		display: inline-block;
		background-color: #cccccc;
	}
	.content>form>div>input{
		width: 40%;
	}
	.err{
		color: red;
		font-style: italic;
		font-size: 9pt;
	}
</style>
<script type="text/javascript" src="js/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
	$(function(){
		$('.content form button[type="button"]').click(function(){
			window.history.back();
		});
		$('.content form').submit(function(){
			var name=$('#name').val();
			var pay=$('#pay').val();
			var msg='name:'+name+'\npay:'+pay+'\n로 수정하시겠습니까?';
			return window.confirm(msg);
		});
	});
</script>
<title>Insert title here</title>
</head>
<%
	GuestDto bean=(GuestDto)request.getAttribute("bean");
%>
<body>
	<div class="container_12">
		<div id="header" class="grid_12">
			<img alt="logo" src="images/logo.jpg"/>
		</div>
		<div class="clear"></div>	
		<div id="menu" class="grid_12">
			<a href="index.bit">HOME</a>
			<a href="list.bit">LIST</a>
			<a href="add.bit">ADD</a>
		</div>
		<div class="clear"></div>	
		<div class="grid_12 content">
			<h1>수정페이지</h1>
			<form method="post">
				<div>
					<label for="sabun">사번</label>
					<input type="text" value="<%=bean.getSabun() %>" name="sabun" id="sabun" readonly/>
				</div>
				<div>
					<label for="name">이름</label>
					<input type="text" value="<%=bean.getName() %>" name="name" id="name"/>
				</div>
				<div>
					<label for="nalja">날짜</label>
					<input type="text" value="<%=bean.getNalja() %>" id="nalja" disabled/>
				</div>
				<div>
					<label for="pay">금액</label>
					<input type="text" value="<%=bean.getPay() %>" name="pay" id="pay"/>
				</div>
				<div>
					<button type="submit">수정</button>
					<button type="reset">취소</button>
					<button type="button">뒤로</button>
				</div>
			</form>
		</div>
		<div class="clear"></div>	
		<div id="footer" class="grid_12">
		Copyright &copy; 비트캠프 All rights reserved.
		</div>
		<div class="clear"></div>	
	</div>
</body>
</html>


















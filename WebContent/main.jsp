<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width" , initial-scale="1"> <!-- 반응형 -->
<link rel = "stylesheet" href="css/bootstrap.css">
<title>JSP 게시판 웹 사이트</title>
</head>
<body>
<%
	String userID = null;
	if (session.getAttribute("userID") != null){
		userID = (String) session.getAttribute("userID");
	}

%>
<nav class="navbar navbar-default">
	<div class="navbar-header">
		<button type="button" class="navbar-toggle collapsed"
			data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
			aria-expanded="false">
			<span class="icon-bar"></span> <!-- icon-bar: 메뉴 작대기  -->
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
		</button>
		<a class="navbar-brand" href="main.jsp">JSP 게시판 웹 사이트</a>
	</div>
	<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
		<ul class="nav navbar-nav"> <!-- 리스트 -->
			<li class ="active"><a href="main.jsp">메인</a></li>
			<li><a href="bbs.jsp">게시판</a></li>
		</ul>
		<%
			if(userID == null) {
		%>
			<ul class="nav navbar-nav navbar-right">
			<li class ="dropdown">
			<a href="#" class ="dropdown-toggle"
				data-toggle="dropdown" role="button" aria-haspopup="true"
				aria-expanded="false">접속하기<span class="caret"></span></a>
				<ul class ="dropdown-menu">
				<li><a href="login.jsp">로그인</a></li>
					<li><a href="join.jsp">회원가입</a></li>
				</ul>	
			</li>
			</ul>
		<%
			} else {
		%>
		
		<ul class="nav navbar-nav navbar-right">
			<li class ="dropdown">
			<a href="#" class ="dropdown-toggle"
				data-toggle="dropdown" role="button" aria-haspopup="true"
				aria-expanded="false">회원관리<span class="caret"></span></a>
				<ul class ="dropdown-menu">
				<li><a href="logoutAction.jsp">로그아웃</a></li>
				</ul>	
			</li>
			</ul>
		<%
			}
		%>
	
	</div>
</nav> 
	<div class ="container">
		<div class ="jumbotron">
			<div class="container">
				<h2>게시판 기능의 웹 사이트</h2>
				<p> 이 사이트는 부트스트랩으로 만든 jsp 페이지입니다. 게시판에서 다양한 내용을 확인하세요.   </p>
			</div>
		</div>
	</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</body>
</html>
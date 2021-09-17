<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" 
		rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" 
		crossorigin="anonymous">
	<link rel="stylesheet" href="resources/css/css.css" type="text/css"/>
	<title>Insert title here</title>
</head>
<body>
<% int i=1; %>
<div class="board_wrap">
	<div class="board_title">
	 	<strong>게시판</strong>
	 	<p>게시물을 입력하세요</p><a href = "/sh/post">입력</a>
	</div>

<div class="board_list_wrap">
	<div class="board_list">
		<div class = "top">
			<div class="num">번호</div>
			<div class="title">제목</div>
			<div class="date">작성일</div>
			<div class="author">글쓴이</div>
			
		</div><c:forEach var="list" items="${list}">
		<div>
		
			<div class="num"><%=i++ %></div>
			<div class="title">${list.title}</div>
			<div class="date">${list.content}</div>
			<div class="author">${list.author}</div>
		
		</div></c:forEach>
	</div>
	<div class="board_page">
		페이징 구역
	</div>
	<div class="bt_wrap">
		<a href="#" class="on">목록</a>
		<a href="#">수정</a>
	</div>
	</div>
</div>
</body>
</html>
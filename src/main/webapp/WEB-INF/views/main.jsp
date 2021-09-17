<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
	 	<p>게시물을 입력하세요</p>
	</div>

	<div class="board_list_wrap">
	 <div class="board_list">
		<div class = "top">
			<div class="num">번호</div>
			<div class="title">제목</div>
			<div class="date">작성일</div>
			<div class="author">글쓴이</div>
		</div>
		<c:forEach var="list" items="${list}">
		 <div>
			<div class="num"><%=i++ %></div>
			<div class="title"><a href="/sh/view?board_id=${list.board_id}&num=<%=i%>">${list.title}</a></div>
			<div class="date"><fmt:formatDate value="${list.created}" pattern="yyyy-MM-dd (hh:mm:ss)"/></div>
			<div class="author">${list.author}</div>
		 </div>
		</c:forEach>
	</div>
	<div class="board_page">
		페이징 구역
	</div>
	<div class="bt_wrap">
		<a href="/sh/post" class="on">입력</a>
		<a href="#">수정</a>
	</div>
	</div>
</div>
</body>
</html>
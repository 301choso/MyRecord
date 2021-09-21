<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
    <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	
	<link rel="stylesheet" href="resources/css/css.css" type="text/css"/>
	<title>Insert title here</title>
</head>
<body>

<div class="board_wrap">
	<div class="board_title">
	 	<strong>게시판</strong>
	 	<p>게시물을 입력하세요</p><a href = "/sh/delete?board_id=${list.board_id}">삭제</a>
	</div>

<div class="board_view_wrap">
	<div class="board_view">
		<div class = "title">
			${list.title}
		</div>
		<div class = "info">
			<dl>
				<dt>번호</dt>
				<dd>${list.board_id}</dd>
			</dl>
			<dl>
				<dt>작성일</dt>
				<dd><fmt:formatDate value="${list.created}" pattern="yyyy-MM-dd (hh:mm:ss)"/></dd>
			</dl>
			<dl>
				<dt>글쓴이</dt>
				<dd>${list.author}</dd>
			</dl>
		</div>
		
		 <div class = "cont">
			${list.content}
		 </div>
	</div>	
	<div class="bt_wrap">
		<a href="/sh/main" class="on">목록</a>
		<a href="/sh/edit?board_id=${list.board_id}">수정</a>
	</div>
	</div>
</div>
</body>
</html>
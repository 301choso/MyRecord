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
			<div class="num">${list.board_id}</div>
			<div class="title"><a href="/sh/view?board_id=${list.board_id}">${list.title}</a></div>
			<div class="date"><fmt:formatDate value="${list.created}" pattern="yyyy-MM-dd (hh:mm:ss)"/></div>
			<div class="author">${list.author}</div>
		 </div>
		</c:forEach>
	</div>
	<div class="board_page">
		
		    <c:if test="${pageMaker.prev}">
		    	<a href="${pageMaker.makeQuery(pageMaker.startPage - 1)}"> << 이전 </a>
		    </c:if> 
		
		    <c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
		    	<c:choose>
		    		<c:when test="${pageMaker.cri.page==idx}">
		    			
		    			 <a href="${pageMaker.makeQuery(idx)}">${idx}</a>
		    			
		    		</c:when>
		    		<c:otherwise>
		    			 <a href="${pageMaker.makeQuery(idx)}">${idx}</a>
		    		</c:otherwise>
		    	</c:choose>
		    </c:forEach>
		
		    <c:if test="${pageMaker.next && pageMaker.endPage > 0}">
		    	<a href="${pageMaker.makeQuery(pageMaker.endPage + 1)}">다음 >></a>
		    </c:if> 
		  
		  <!-- 페이지 블럭 
		   <ul>
		    <c:if test="${pageMaker.prev}">
		    	<li class="idxn"><a class="paging" href="${pageMaker.makeQuery(pageMaker.startPage - 1)}"> << 이전 </a></li>
		    </c:if> 
		
		    <c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
		    	<c:choose>
		    		<c:when test="${pageMaker.cri.page==idx}">
		    			<font size=+1>
		    			<li class="idxn"><a class="paging1" href="${pageMaker.makeQuery(idx)}">${idx}</a></li></font>
		    		</c:when>
		    		<c:otherwise>
		    			<li class="idxn"><a class="paging2" href="${pageMaker.makeQuery(idx)}">${idx}</a></li>
		    		</c:otherwise>
		    	</c:choose>
		    </c:forEach>
		
		    <c:if test="${pageMaker.next && pageMaker.endPage > 0}">
		    	<li class="idxn"><a class="paging" href="${pageMaker.makeQuery(pageMaker.endPage + 1)}">다음 >></a></li>
		    </c:if> 
		  </ul>
		  -->
	</div>

	<div class="bt_wrap">
		<a href="/sh/post" class="on">입력</a>
		<a href="#">수정</a>
	</div>
	</div>
</div>
</body>
</html>
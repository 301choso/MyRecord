<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="resources/css/css.css" type="text/css"/>
<title>게시물 입력</title>
</head>
<body>
<form name="post" action="update" method="post"> 
<div class="board_wrap">
	<div class="board_title">
	 	<strong>게시판</strong>
	 	<p>게시물을 입력하세요</p>
	</div>

	<div class="board_write_wrap">
		<div class="board_write">
		<div class = "title">
		<input type="hidden" name="board_id" value=${list.board_id}>
			<dl>
				<dt>제목</dt>
				<dd><input type="text" name="title" value=${list.title}></dd>
			</dl>
		</div>
		<div class="info">
			<dl>
				<dt>글쓴이</dt>
				<dd><input type = "text" name = "author" value=${list.author}></dd>
			</dl>
			<dl>
				<dt>비밀번호</dt>
				<dd><input type="password" placeholder="비밀번호 입력"></dd>
			</dl>
		</div>
		<div class="cont">
			<textarea name = "content" >${list.content}</textarea>	
		</div>
		</div>
		<input type = "reset" value = "새로고침">
	 <div class="bt_wrap">
		<a href="javascript:post.submit();">등록</a>
		<a href="/sh/main" class="on">목록</a>
	 </div>
	</div>
</div>
</form>
</body>
</html>
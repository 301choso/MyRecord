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
<form action="view" method="get"> 
		<div class="board_wrap">
	<div class="board_title">
	 	<strong>게시판</strong>
	 	<p>게시물을 입력하세요</p>
	</div>

<div class="board_list_wrap">
	<div class="board_list">
		<div class = "top">
			<div class="num">게시물 입력</div>
			<div class="bt_wrap">
			<input type = "submit" value = "입력">
			<input type = "reset" value = "취소">
			</div>
		</div>
		</div>
		 <table>
			<tr>
		   	 <th>제목</th><td><input type = "text" name = "title" size="80"></td>
		   	</tr>
		   	<tr>
		   	 <th>내용</th><td><textarea name = "content" style="width:100%"></textarea></td>
		   	</tr>
		   	<tr>
		   	 <th>작성자</th><td><input type = "text" name = "author" size="80"></td>
		   	</tr>
	    </table>		
			
		
	
	 <div class="bt_wrap">
		<a href="#" class="on">목록</a>
		<a href="#">수정</a>
	 </div>
	</div>
</div>
</form>
</body>
</html>
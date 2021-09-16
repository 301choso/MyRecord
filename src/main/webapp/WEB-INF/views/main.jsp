<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="view" method="get">
제목 : <input type = "text" name = "title"><p>
내용 : <textarea name = "content"></textarea><p>
작성자 : <input type = "text" name = "author"><p>
<input type = "submit" value = "입력">
<input type = "reset" value = "취소">
</form>
</body>
</html>
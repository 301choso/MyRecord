<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:forEach var="list" items="${list}">
제목 : ${list.title}<p>
내용 : ${list.content}<p>
작성자 : ${list.author}<p>
</c:forEach>

</body>
</html>
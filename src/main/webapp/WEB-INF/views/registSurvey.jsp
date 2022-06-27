<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>설문조사 만들기</h1>
		<form action="registSurvey" method="post">
			<p>설문조사 제목:<input type="text" name="sTitle"></p>
			<p>설문조사 설명:<input type="text" name="sContent"></p>
			<p><input type="text" name= "qContent" placeholder="질문을 작성해주세요.">
			<button type="submit">완료</button>
		</form>
</body>
</html>
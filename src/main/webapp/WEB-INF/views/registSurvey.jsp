<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>설문조사 만들기</h1>
		<form action="registSurvey" method="post" class="regist">
			<p><input type="text" name="sTitle" placeholder="설문조사의 제목을 작성해주세요." style="width:40%; height:40px; font-size:16px;"></p>			
			<p><input type="text" name="sContent" placeholder="설명" style="width:30%;"></p>
			<p><input type="text" name= "qContent" placeholder="질문을 작성해주세요." style="width:25%">
			<select class="AnswerType" name="aType">
				<option value="short">단답형</option>
				<option value="long">장문형</option>
				<option value="subject">객관식</option>
				<option value="checkbox">체크박스</option>
				<option value="dropdown">드롭다운</option>
			</select>
			<hr>	
			<button type="submit">완료</button>
		</form>
<script>
$(document).on('change', '.AnswerType', function(){
	if($(this).val()=="short"){	
		$(this).parent().append('<p><input type="text" value="단답형 답변(10자 이내)" maxlength="10" disabled>');

	} else if($(this).val()=="long"){
		$(this).parent().append('<p><input type="text" value="장문형 답변(100자 이내)" style="width:40%; height:200px;" maxlength="100" disabled>');
	}
});
</script>	
</body>
</html>
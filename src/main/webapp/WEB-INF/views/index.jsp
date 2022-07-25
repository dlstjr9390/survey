<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 합쳐지고 최소화된 최신 CSS -->
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

</head>
<body>
	<h1>설문조사</h1>
		<sec:authorize access="isAuthenticated()">
			<sec:authentication property="principal" var="principal"/>
				<h3>
					<span style="color:#808080">${principal.uName }</span>님&nbsp; 
					<a style="text-align:right ; color:red;"href="/logout">로그아웃</a>&nbsp;
					<sec:authorize access="isAuthenticated()">
		 					<a style="font-size:15px;"href="/user/info">내 정보</a>
		 					<a style="font-size:15px;"href="/admin">관리자</a>
		 					<a style="font-size:15px;"href="/surveyStatistic?uId=${principal.username}">통계</a>
					</sec:authorize>			
				</h3>
		</sec:authorize>					
			<sec:authorize access="isAnonymous()">
				<a href="/login">로그인</a>
				<a href="/beforeSignUp">회원가입</a>
			</sec:authorize>
	<hr>
	<div style="margin-left:5px;">
		<sec:authorize access="isAuthenticated()">
			<a href="Before_registSurvey" class="btn btn-primary" role=button>설문조사 만들기</a>&nbsp;
			<a href="ParticipateSurvey" class="btn btn-primary" role=button>설문조사 참여하기</a>	
		</sec:authorize>
	</div>
</body>
<script>

</script>
</html>
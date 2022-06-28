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
</head>
<body>
	<h1>설문조사</h1>
		<sec:authorize access="isAuthenticated()">
			<sec:authentication property="principal" var="principal"/>
				<h3>
					<span style="color:#808080">${principal.username }</span>님&nbsp; 
					<a style="text-align:right ; color:red;"href="/logout">로그아웃</a>&nbsp;
					<sec:authorize access="isAuthenticated()">
		 					<a style="font-size:15px;"href="/user/info">내 정보</a>
		 					<a style="font-size:15px;"href="/admin">관리자</a>
					</sec:authorize>			
				</h3>
		</sec:authorize>					
			<sec:authorize access="isAnonymous()">
				<a href="/login">로그인</a>
				<a href="/beforeSignUp">회원가입</a>
			</sec:authorize>
	<hr>
	<sec:authorize access="isAuthenticated()">
		<a href="Before_registSurvey">설문조사 만들기</a>
		<a href="home">설문조사 참여하기</a>	
	</sec:authorize>	
</body>
</html>
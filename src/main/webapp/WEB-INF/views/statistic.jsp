<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>       
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>${survey.sTitle}</h1>
	<h2>${survey.sDesc}</h2>
	<c:forEach items="${survey.questionlist}" var="item" varStatus="status"> 
		<p style="font-size:25px;">${item.qNum }.${item.qContent }<br>
		<c:forEach items="${item.qAnswerlist}" var="aitem" varStatus="status">
			<c:forEach items="${responselist }" var="sitem" varStatus="status">
				<c:choose>
					<c:when test="${item.aType eq 'short' or item.aType eq 'long'}">
						<c:if test="${sitem.qIdx eq aitem.qIdx}">
						<p>${sitem.response}</p>
							</c:if>
					</c:when>
					<c:when test="${item.aType eq 'subject' }">
						<c:if test="${sitem.qIdx eq aitem.qIdx }">
							<p>${aitem.aContent } :  </p>
						</c:if>	
					</c:when>
					
				</c:choose>
			</c:forEach>
		</c:forEach>
		<hr>
		<hr>
	</c:forEach>
	
</body>
</html>
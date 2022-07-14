<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
	input[type="checkbox"]{
		width: 1rem;
	    height: 1rem;
	    border-radius: 50%;
	    border: 1px solid #999;
	    appearance: none;
	    cursor: pointer;
	    transition: background 0.2s;
	}
	
	input[type="checkbox"]:checked {
	    background: black;
	    border: none;
 	 }
 	 
 	 input[type="radio"]{
 	 	width: 1rem;
	    height: 1rem;
 	 }
</style>

<body>
	<h1>${survey.sTitle }</h1>
	<h2>${survey.sDesc}</h2>
	<br>
	<hr>
	<div style="margin-left:10px;">
		<c:forEach items="Survey" var="item" varStatus="status">
			<c:forEach items="${survey.questionlist}" var="qitem" varStatus="status">
				<p style="font-size:25px;">${qitem.qNum }.${qitem.qContent }</p>
				<c:forEach items="${qitem.qAnswerlist }" var="aitem" varStatus="status">
					<c:choose>
						<c:when test="${qitem.aType eq 'short' }">
							<p><input type="text" placeholder="단답형 답변(10자 이내)" maxlength=10 size=18 class="answer"></p>
						</c:when>
						
						<c:when test="${qitem.aType eq 'long' }">
							<p><textarea placeholder="장문형 답변(100자 이내)" maxlength=100 style="width:300px; height:100px;" class="answer"></textarea></p>
						</c:when>
						
						<c:when test="${qitem.aType eq 'subject' }">
							<p><input type="radio" value="${aitem.aContent }" name="${aitem.qIdx }" class="answer">${aitem.aNum}.${aitem.aContent }</p>
						</c:when>
						
						<c:when test="${qitem.aType eq 'checkbox' }">
							<p><input type="checkbox" value="${aitem.aContent }"  class="answer">${aitem.aNum}.${aitem.aContent }</p>
						</c:when>
						
						<c:when test="${qitem.aType eq 'dropdown' }">
								<select>
									<option value="answer">${aitem.aContent  }</option>
								</select>	
						</c:when>
					</c:choose>
				</c:forEach>
				<hr>
				<hr>
			</c:forEach>
		</c:forEach>
	</div>
</body>
</html>
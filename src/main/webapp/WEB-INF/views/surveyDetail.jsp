<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
<script>
 let var = 0;
</script>
	<h2>${survey.sTitle }</h2>
	<h3>${survey.sDesc}</h3>
	<br>
	<div style="margin-left:10px;">
		<c:forEach items="${questionlist }" var="item" varStatus="status">
			<p>${item.qContent}</p>
			<c:forEach items="${aList }" var="item2" varStatus="status">
				<c:if test="${item2.qIdx == item.qIdx}">
					<p>${item2.aNum}.${item2.aContent }</p>
				</c:if>
			</c:forEach>
		</c:forEach>	
	</div>
</body>
</html>
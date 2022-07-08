<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title</title>
</head>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<body>
	<table class="table table-bordered" style="width:80%; ">
		<c:forEach items="${list}" var="item" varStatus="status">
			<tr>
				<th colspan="5" style="text-align:center;"> 전체 설문조사 수 : ${pagination.count}</th>
			<tr>
				<th style="width:5%;">No</th>
				<th style="width:35%">설문 제목</th>
				<th style="width:20%">설명</th>
				<th style="width:10%">조회수</th>
				<th>등록 날짜</th>
			</tr>
			<tr>
				<td>${item.sNum }</td>
				<td>${item.sTitle }</td>
				<td>${item.sDesc }</td>
				<td>${item.sViews }</td>
				<td>${item.sDatetime }</td>
			</tr>
		</c:forEach>	
	</table>
	<div>
		<ul class="ulpagination">
			<c:choose>
				<c:when test = "${pagination.prevPage lt pagination.nextPage and prevPage gt 0}">
					<li class="lipagination">
						<a href="/?page=${pagination.prevPage }">◀</a>
					</li>
				</c:when>
			</c:choose>
			
		</ul>
	</div>
</body>
</html>
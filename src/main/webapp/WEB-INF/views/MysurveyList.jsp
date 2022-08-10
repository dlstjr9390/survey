<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title</title>
<style>
	
	ul{
		list-style:none;
		padding:0;
	}
	
	li{	
		font-size:20px;
		list-style:none;
		margin:10px;
		float:left;
		
	}	
</style>
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
	<sec:authorize access="isAuthenticated()">
		<sec:authentication property="principal" var="principal"/>
			<c:if test="${pagination.uId eq principal.username }">
				<table class="table table-bordered" style="width:80%; " id ="${pagination.uId }">
					<tr>
						<th colspan="6" style="text-align:center;"> 전체 설문조사 수 : ${pagination.count}</th>
					<tr>	
					<c:forEach items="${list}" var="item" varStatus="status">
							<th style="width:5%;">No</th>
							<th style="width:35%">설문 제목</th>
							<th style="width:20%">설명</th>
							<th style="width:10%">참여</th>
							<th colspan="2">등록 날짜</th>
						<tr>
							<td>${item.sNum }</td>
							<c:choose>
								<c:when test="${item.rescount > 0 }">
									<td><a href="/statisticDetail?sIdx=${item.sIdx }">${item.sTitle }</a></td>
								</c:when>
								<c:when test="${item.rescount < 1 }">
									<td><a href="/statisticDetail?sIdx=${item.sIdx }" class="statdetail">${item.sTitle }</a></td>
								</c:when>
							</c:choose>
							<td>${item.sDesc }</td>
							<td>${item.rescount }</td>
							<td>${item.sDatetime }</td>
							<td style="border-left:hidden;"><button class="surdelbtn" id="${item.sIdx }">삭제</button></td>
						</tr>
					</c:forEach>	
				</table>
				<div>
					<ul class="ulpagination">
						<c:choose>
							<c:when test = "${pagination.prevPage lt pagination.nextPage and prevPage gt 0}">
								<li class="lipagination">
									<a href="/surveyStatistic?page=${pagination.prevPage }&uId=${principal.username}">◀</a>
								</li>
							</c:when>
						</c:choose>
						
						<c:forEach var="i" begin="${pagination.startPage }" end="${pagination.endPage }" step="1">
							<c:choose>
								<c:when test="${pagination.page eq i }">
									<li class="lipagination">
										<span>${i}</span>
									</li>
								</c:when>
								
								<c:when test="${pagination.page ne i }">
									<li class="lipagination">
										<a href="/surveyStatistic?page=${i }&uId=${principal.username}">${i}</a>
									</li>
								</c:when>
							</c:choose>
						</c:forEach>
						
						<c:choose>
							<c:when test="${pagination.nextPage le pagination.lastPage}">
								<li class="lipagination">
									<a href="/surveyStatistic?page=${pagination.nextPage }&uId=${principal.username}">▶</a>
								</li>
							</c:when>
						</c:choose>
					</ul>
				</div>
			</c:if>
			<c:if test="${pagination.uId ne principal.username}">
				<h2>잘못된 접근입니다.</h2>
			</c:if>
	</sec:authorize>	
	<br><p><a href="/">뒤로</a></p>
	<script>
		$(document).on('click','.statdetail',function(e){
			alert('응답자가 없습니다.');
			e.preventDefault() ? e.preventDefault() : (e.returnValue = false);
		})
		
		$(document).on('click','.surdelbtn',function(){
			let sIdx = $(this).attr('id');
			let uId = $(this).closest('table').attr('id');
		
			$.ajax({
				method: "POST",
				url: "/delsurvey",
				data: sIdx = {sIdx:sIdx, uId:uId},
				success: function(data){
							let url="/surveyStatistic?uId="+uId;
							location.replace(url);
				}
			})
		})

	</script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>       
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>${survey.sTitle}</h1>
	<h2>${survey.sDesc}</h2>
	<hr><hr>
	<c:forEach items="${survey.questionlist}" var="item" varStatus="status"> 
		<p style="font-size:25px;">${item.qNum }.${item.qContent }<p>
		<c:forEach items="${item.qAnswerlist}" var="aitem" varStatus="status">
			<c:choose>
				<c:when test="${item.aType eq 'short' or item.aType eq 'long'}">
					<c:forEach items="${responselist }" var="sitem" varStatus="status">
						<c:if test="${sitem.qIdx eq aitem.qIdx}">
							<p>${sitem.response}</p>
						</c:if>
					</c:forEach>
				</c:when>
			</c:choose>
		</c:forEach>	
			<c:choose>
				<c:when test="${item.aType eq 'subject'}">
					<script type="text/javascript">
					    google.charts.load("current", {'packages':["corechart"]});
					    google.charts.setOnLoadCallback(drawChart);
						function drawChart(){	
									var data = new google.visualization.DataTable();
									data.addColumn('string','보기');
									data.addColumn('number','응답수');
									<c:forEach items="${item.qAnswerlist}" var="aitem" varStatus="status">
										data.addRows([
										['${aitem.aContent}',${aitem.count}]
											]);
									</c:forEach>
									var option ={
											'title':'표',
						                    'width':450,
						                    'height':450,
						                    pieSliceText:'label',
						                    legend:'none' 
									};
									var chart = new google.visualization.PieChart(document.getElementById('subject_piechart'));
									chart.draw(data,option);
						}
					</script>
					<div id="subject_piechart">
					</div>  
				</c:when>
				
				<c:when test="${item.aType eq 'checkbox'}">
					<script type="text/javascript">
					    google.charts.load("current", {'packages':["corechart"]});
					    google.charts.setOnLoadCallback(drawChart);
						function drawChart(){	
									var data = new google.visualization.DataTable();
									data.addColumn('string','보기');
									data.addColumn('number','응답수');
									<c:forEach items="${item.qAnswerlist}" var="aitem" varStatus="status">
										data.addRows([
										['${aitem.aContent}',${aitem.count}]
											]);
									</c:forEach>
									var option ={
											'title':'표',
						                    'width':450,
						                    'height':450,
						                    pieSliceText:'label',
						                    legend:'none' 
									};
									var chart = new google.visualization.PieChart(document.getElementById('check_piechart'));
									chart.draw(data,option);
						}
					</script>
					<div id="check_piechart">
					</div>  
				</c:when>
				
				<c:when test="${item.aType eq 'dropdown'}">
					<script type="text/javascript">
					    google.charts.load("current", {'packages':["corechart"]});
					    google.charts.setOnLoadCallback(drawChart);
						function drawChart(){	
									var data = new google.visualization.DataTable();
									data.addColumn('string','보기');
									data.addColumn('number','응답수');
									<c:forEach items="${item.qAnswerlist}" var="aitem" varStatus="status">
										data.addRows([
										['${aitem.aContent}',${aitem.count}]
											]);
									</c:forEach>
									var option ={
											'title':'',
						                    'width':450,
						                    'height':450,
						                    pieSliceText:'label',
						                    legend:'none' 
									};
									var chart = new google.visualization.PieChart(document.getElementById('dropdown_piechart'));
									chart.draw(data,option);
						}
					</script>
					<div id="dropdown_piechart">
					</div>  
				</c:when>																						
			</c:choose>
			<hr><hr>
	</c:forEach>
	<div style=" margin-top:50px;">
		<sec:authorize access="isAuthenticated()">
			<sec:authentication property="principal" var="principal"/>
				<a href="/surveyStatistic?uId=${principal.username}" style="font-size:20px; text-decoration-line : none;"><b>뒤로</b></a>
		</sec:authorize>
	</div>
</body>
</html>
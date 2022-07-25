<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>       
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script type="text/javascript" src="https://www.google.com/jsapi"></script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
<script type="text/javascript">
    google.charts.load("current", {packages:["corechart"]});
    google.charts.setOnLoadCallback(drawChart);
	function drawChart(){
	//   <c:forEach items="${survey.questionlist}" var="item">
    	//	<c:forEach items="${item.qAnswerlist}" var="aitem">
				var data = new gooogle.visualization.DataTable();
				data.addColumn('ss','adf');
				data.addColumn('aa','asdf');
				data.addRows(['asd',5],['asdf',3],['asdfaa',3]);

				var option ={
						'title':'표',
	                    'width':200,
	                    'height':200,
	                    pieSliceText:'label',
	                    legend:'none' 
				};
				var chart = new google.visualization.PieChart(document.getElemetByld("response_piechart"));
				chart.draw(data,option);
	//	    </c:forEach>
	//    </c:forEach>
	}
</script>   
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>${survey.sTitle}</h1>
	<h2>${survey.sDesc}</h2>
	<hr><hr>
	<c:forEach items="${survey.questionlist}" var="item" varStatus="status"> 
		<p style="font-size:25px;">${item.qNum }.${item.qContent }<br>
		<c:forEach items="${item.qAnswerlist}" var="aitem" varStatus="status">
			<c:choose>
				<c:when test="${item.aType eq 'short' or item.aType eq 'long'}">
					<c:forEach items="${responselist }" var="sitem" varStatus="status">
						<c:if test="${sitem.qIdx eq aitem.qIdx}">
							<p>${sitem.response}</p>
						</c:if>
					</c:forEach>
				</c:when>
				<c:when test="${item.aType eq 'subject' or item.aType eq 'checkbox' or item.aType eq 'dropdown' }">
						<p>${aitem.aContent } : ${aitem.count} </p>
				</c:when>			
			</c:choose>
		</c:forEach>
		<hr><hr>
			<div id="response_piechart" style="width: 900px; height: 500px;">
		</div>
	</c:forEach>
	
</body>
</html>
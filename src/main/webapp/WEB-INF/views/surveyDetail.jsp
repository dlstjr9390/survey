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
<style>
	button{
		width:100px;
		height:50px;
		color:white;
		background:#40A940;
		border:none;
		box-shadow : 3px 3px 3px black;
	}
	button:hover{
		background: #6DD66D;
		color: white;
		cursor: pointer;
	}
	
	button:active{
		margin-left: 5px;
		margin-top : 5px;
		box-shadow : none;
	}
</style>

<body>
	<h1>${survey.sTitle }</h1>
	<h2>${survey.sDesc}</h2>
	<br>
	<hr>
	<c:forEach items="Survey" var="item" varStatus="status">
		<c:forEach items="${survey.questionlist}" var="qitem" varStatus="status">
			<div style="margin-left:10px; ">
				<p class="Question" style="font-size:25px;" id="${qitem.qIdx }"><span class="qNum">${qitem.qNum }</span>.<span class="qContent">${qitem.qContent }</span></p>
				<c:forEach items="${qitem.qAnswerlist }" var="aitem" varStatus="status">
					<c:choose>
						<c:when test="${qitem.aType eq 'short' }">
							<p><input type="text" placeholder="단답형 답변(10자 이내)" maxlength=10 size=18 class="textanswer" ></p>
						</c:when>
						
						<c:when test="${qitem.aType eq 'long' }">
							<p><textarea placeholder="장문형 답변(100자 이내)" maxlength=100 style="width:300px; height:100px;" class="textanswer" ></textarea></p>
						</c:when>
						
						<c:when test="${qitem.aType eq 'subject' }">
							<p><input type="radio" value="${aitem.aContent }" name="${aitem.qIdx }" class="answer">${aitem.aNum}.${aitem.aContent }</p>
						</c:when>
						
						<c:when test="${qitem.aType eq 'checkbox' }">
							<p><input type="checkbox" value="${aitem.aContent }"  name="answer" class="answer">${aitem.aNum}.${aitem.aContent }</p>
						</c:when>
					</c:choose>
				</c:forEach>
					<c:choose>
						<c:when test="${qitem.aType eq 'dropdown' }">
							<select class="dropdown">
								<c:forEach items="${qitem.qAnswerlist }" var="aitem" varStatus="status">
									<option value="${aitem.aContent  }">${aitem.aContent  }</option>
								</c:forEach>		
							</select>
							<br>	
						</c:when>
					</c:choose>
				<br>	
				<hr>
				<hr>
			</div>
		</c:forEach>
	</c:forEach>
		<div style="text-align:center;">
			<button type="submit" id="submit" style="margin:auto; display:black;">완료</button>
		</div>
	<script>
		$(document).on('click','#submit',function(){
			let questionlist =[];
			
			$('.Question').each(function(){
				let responselist = [];
				if($(this).parent().find('.answer').hasClass('answer') == true){
					$(this).parent().find('input:checked').each(function(){
						let response={};
	
						response.aContent = $(this).val();	
						responselist.push(response);
	
							
					});
				} else if($(this).parent().find('.textanswer').hasClass('textanswer') == true){
					$(this).parent().find('.textanswer').each(function(){
						let response={};
						
						response.aContent = $(this).val();
						responselist.push(response);	
					});
						
				} else{
					$(this).parent().find('option:selected').each(function(){
						let response={};
						
						response.aContent = $(this).val();
						responselist.push(response);	
					});
				}	
				
				let question = {
								qNum	: $(this).find('.qNum').text(),
								qContent : $(this).find('.qContent').text(),
								qIdx : $(this).attr('id'),
								responselist : responselist
				}
				questionlist.push(question);
			});
			
			let survey = {
							sTitle: '${survey.sTitle}',
							sDesc: '${survey.sDesc}',
							sIdx: '${survey.sIdx}',
							questionlist: questionlist
							
						}
			
			let responseresult = JSON.stringify(survey);

			console.log(survey);
			
		/*	$.ajax({
				method: "POST",
				url: "/responseSurvey",
				data: responseresult,
				contentType: "application/json",
				success: function(data){
							let url="/";
							location.replace(url);
				}			
			})*/
		});
	</script>
</body>
</html>
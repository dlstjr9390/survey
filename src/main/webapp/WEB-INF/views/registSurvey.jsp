<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<script>
		var qnum = 1;
	</script>
	<div style="margin-left:10px;">
		<h1>설문조사 만들기</h1>
			<div id="survey">
				<p><input type="text" class="sTitle" placeholder="설문조사의 제목을 작성해주세요." style="width:40%; height:40px; font-size:16px;"></p>			
				<p><input type="text" class="sDescription" placeholder="설명" style="width:30%;"></p>
				<hr>
				<div id="qFormat">
					<div class="qFormat">
						<p style="font-size:15px;"><b>1.</b> <input type="text" class= "qContent" placeholder="질문을 작성해주세요." style="width:25%; height:30px;">
						<select class="aType" name="aType"style="margin-left:10px; margin-right:10px;" >
							<option value="default" selected disabled>선택</option>
							<option value="short" >단답형</option>
							<option value="long">장문형</option>
							<option value="subject">객관식</option>
							<option value="checkbox">체크박스</option>
							<option value="dropdown">드롭다운</option>
						</select>
						<button type="button" class="addsubbtn" style="display:none">항목 추가</button>
						<hr>
					</div>
				</div>	
				<button type="submit" id="submit">완료</button>
			</div>
	</div>
<script>
	var num = 1;
	var ischange = false;
	
	$(document).on('change', '.aType', function(){
		if(ischange == true){
			$(this).parent().find('.ex').remove();
			$(this).parent().find('.addbtn').remove();
			$(this).parent().find('.addsubbtn').hide();
			$(this).parent().parent().find('.addbtn').remove();

			
			num = 1;
		}
		
		if($(this).val()=="short"){
			$(this).parent().append('<p style="margin-top:10px; font-size:13;" class="ex"><input type="text" name="short" class="answer" value="단답형 답변(10자 이내)" style="width:20%;" maxlength="10" disabled>');
			$(this).parent().append('<button type="button" class="addbtn">질문 추가</button>');	
			
		} else if($(this).val()=="long"){
			$(this).parent().append('<p style="margin-top:10px; font-size:13;" class="ex"><input type="text" name="long" class="answer" value="장문형 답변(100자 이내)" style="width:40%; height:200px;" maxlength="100" disabled>');
			$(this).parent().append('<button type="button" class="addbtn">질문 추가</button>');
			
		} else if($(this).val()=="subject" ||$(this).val()=="checkbox"){
			$(this).parent().find('.addsubbtn').show();
			$(this).parent().append('<p style="margin-top:10px; font-size:13px;" class="ex">'+num+'. <input type="text" name = "subOrcheck" class="answer" style="font-size:13px; height:23px;"></p>');
			$(this).parent().after('<button type="button" class="addbtn">질문 추가</button>');
			
		} else if($(this).val()=="dropdown"){
			$(this).parent().find('.addsubbtn').show();
			$(this).parent().append('<p style="margin-top:10px; font-size:13px;" class="ex">'+num+'. <input type="text" name = "dropdown" class="answer" style="font-size:13px; height:23px;">&nbsp;');
			$(this).parent().after('<button type="button" class="addbtn">질문 추가</button>');
		}
		
		ischange = true;
	});
	
	$(document).on('click', '.addbtn',function(){
		qnum ++;
		$('#qFormat').append('<div class="qFormat">'
							+'<p style="font-size:15px;">'+'<b>'+qnum+'</b>'+'. <input type="text" name= "qContent" class="qContent" placeholder="질문을 작성해주세요." style="width:25%; height:30px;">'
							+'<select class="aType" name="aType" style="margin-left:10px; margin-right:10px;" >'
							+'<option value="default" selected disabled>선택</option>'
							+'<option value="short">단답형</option>'
							+'<option value="long">장문형</option>'
							+'<option value="subject">객관식</option>'
							+'<option value="checkbox">체크박스</option>'
							+'<option value="dropdown">드롭다운</option>'
							+'</select>'
							+'<button type="button" class="addsubbtn" style="display:none">항목 추가</button>'
							+'<button type="button" class="delbtn" style="margin-left:15px;">질문 삭제</button>'
							+'<hr>'
							+'</div>'
		);
		$(this).remove();
	});
	
	$(document).on('click','.addsubbtn',function(){
		if(num < 2){
			num ++;
			$(this).parent().append('<p font-size:13px; class="ex">'+num+'. <input type="text" class="answer" style="font-size:13px; height:23px;">&nbsp;'
								+'<button type="button" class="delsubbtn">삭제</button>');
		} else if(num >= 2 && num < 10){
			num++;
			$(this).parent().find('.delsubbtn').hide();
			$(this).parent().append('<p font-size:13px; class="ex">'+num+'. <input type="text" class="answer" style="font-size:13px; height:23px;">&nbsp;'
					+'<button type="button" class="delsubbtn" >삭제</button>');
			
		} else if(num >= 10){
			alert('최대 문항의 개수는 10개 입니다.');
			return;
		}				
	});

	$(document).on('click','.delsubbtn',function(){
			$(this).parent().prev().find('.delsubbtn').show();
			$(this).closest('p').remove()
		num --;

		
	});

	$(document).on('click','.delbtn',function(){
		$(this).parent().next().remove();
		qnum--;
		if(qnum == 1){
			$(this).closest('div').prev().find('hr').before('<button type="button" class="addbtn">질문 추가</button>');
		} else {
			$(this).parent().parent().prev().find('hr').before('<button type="button" class="addbtn">질문 추가</button>');
		}	
		$(this).closest('div').remove();

	});
	
	$(document).on('click','#submit',function(){
		let qFormatlist = [];
		
		$('.qFormat').each(function(){
			let qAnswerlist = [];

			$(this).find('.answer').each(function(){
				let qAnswer = {};
				qAnswer.aContent = $(this).parent().find('.answer').val();
				qAnswerlist.push(qAnswer);
					
			});

			let qFormat ={	question:{
								qContent:$(this).find('.qContent').val(),
								aType	:$(this).find('.aType').val(),
							},
							qAnswerlist:qAnswerlist
			};
			qFormatlist.push(qFormat);
		});

		let survey = {
					sTitle:$('#survey').find('.sTitle').val(),
					sDesc:$('#survey').find('.sDescription').val(),
					qFormatlist:qFormatlist
			}
		let surveyresult = JSON.stringify(survey);

		$.ajax({
				method: "POST",
				url: "/registSurvey",
				data: surveyresult,
				contentType: "application/json",
				success: function(data){
							let url="/";
							location.replace(url);
					}
		})
	});
</script>	
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
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
			<p><input type="text" name="sTitle" placeholder="설문조사의 제목을 작성해주세요." style="width:40%; height:40px; font-size:16px;"></p>			
			<p><input type="text" name="sContent" placeholder="설명" style="width:30%;"></p>
			<hr>
			<div class="qFormat">
				<p style="font-size:15px;"><b>1.</b> <input type="text" name= "qContent" placeholder="질문을 작성해주세요." style="width:25%; height:30px;">
				<select class="AnswerType" name="aType" style="margin-left:10px; margin-right:10px;" >
					<option value="default" selected disabled>선택</option>
					<option value="short">단답형</option>
					<option value="long">장문형</option>
					<option value="subject">객관식</option>
					<option value="checkbox">체크박스</option>
					<option value="dropdown">드롭다운</option>
				</select>
				<button type="button" class="addsubbtn" style="display:none">추가</button>
				<hr>
			</div>	
			<button type="submit">완료</button>
	</div>
<script>
	var num = 1;
	var ischange = false;
	
	$(document).on('change', '.AnswerType', function(){
		if(ischange == true){
			$('.qFormat').find('.answer').remove();
			$('.qFormat').find('.addbtn').remove();
			
			
			num = 1;
		}
		
		if($(this).val()=="short"){
			$(this).parent().append('<p style="margin-top:10px; font-size:13;" class="answer"><input type="text" value="단답형 답변(10자 이내)" style="width:20%;" maxlength="10" disabled>');
			$(this).parent().append('<button type="button" class="addbtn">질문 추가</button>');	
			
		} else if($(this).val()=="long"){
			$(this).parent().append('<p style="margin-top:10px; font-size:13;" class="answer"><input type="text" value="장문형 답변(100자 이내)" style="width:40%; height:200px;" maxlength="100" disabled>');
			$(this).parent().append('<button type="button" class="addbtn">질문 추가</button>');
			
		} else if($(this).val()=="subject" ||$(this).val()=="checkbox"){
			$(this).parent().find('.addsubbtn').show();
			$(this).parent().append('<p style="margin-top:10px; font-size:13px;" class="answer">'+num+'. <input type="text" style="font-size:13px; height:23px;"></p>');
			$(this).parent().next().before('<button type="button" class="addbtn">질문 추가</button>');
			
		} else if($(this).val()=="dropdown"){
			$(this).parent().find('.addsubbtn').show();
			$(this).parent().append('<p style="margin-top:10px; font-size:13px;" class="answer">'+num+'. <input type="text" style="font-size:13px; height:23px;">&nbsp;');
			$(this).parent().next().before('<button type="button" class="addbtn">질문 추가</button>');
		}
		
		ischange = true;
	});
	
	$(document).on('click', '.addbtn',function(){
		qnum ++;
		$('.qFormat').append('<p style="font-size:15px;">'+'<b>'+qnum+'</b>'+'. <input type="text" name= "qContent" placeholder="질문을 작성해주세요." style="width:25%; height:30px;">'
							+'<select class="AnswerType" name="aType" style="margin-left:10px; margin-right:10px;" >'
							+'<option value="default" selected disabled>선택</option>'
							+'<option value="short">단답형</option>'
							+'<option value="long">장문형</option>'
							+'<option value="subject">객관식</option>'
							+'<option value="checkbox">체크박스</option>'
							+'<option value="dropdown">드롭다운</option>'
							+'</select>'
							+'<button type="button" class="addsubbtn" style="display:none">추가</button>'
							+'<hr>'
		);
	});
	
	$(document).on('click','.addsubbtn',function(){
		if(num < 2){
			num ++;
			$(this).parent().append('<p font-size:13px; class="answer">'+num+'. <input type="text" style="font-size:13px; height:23px;">&nbsp;'
								+'<button type="button" class="delsubbtn">삭제</button>');
		} else if(num >= 2 && num < 10){
			num++;
			$(this).parent().find('.delsubbtn').hide();
			$(this).parent().append('<p font-size:13px; class="answer">'+num+'. <input type="text" style="font-size:13px; height:23px;">&nbsp;'
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
</script>	
</body>
</html>
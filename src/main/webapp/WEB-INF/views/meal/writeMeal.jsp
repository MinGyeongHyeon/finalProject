<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
<script>
$(function(){
	$("#datepicker").datepicker({
		changeMonth: true, 
        changeYear: true,
        nextText: '다음 달',
        prevText: '이전 달',
        colseText:'닫기',
        minDate:"-1M",
        maxDAte:"+0D",
        dateFormat:"yy-mm-dd",
        dayNames: ['월요일', '화요일', '수요일', '목요일', '금요일', '토요일', '일요일'],
        dayNamesMin: ['월', '화', '수', '목', '금', '토', '일'], 
        monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12'],
        monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
        onSelect:function(){
        	day = $("#datepicker").val();
        	var date = $("#today").html(day);
        	//location.href = "changeAttendance.at";
        	var date = $("#today").html();
        }
	});
});

$(function(){
	$("#fileArea").hide();
	$("#mealContent1").click(function(){
		$("#thumbnailImg1").click();
	});
	$("#mealContent2").click(function(){
		$("#thumbnailImg2").click();
	});
	$("#mealContent3").click(function(){
		$("#thumbnailImg3").click();
	});
});
function loadImg(value, num) {
	if(value.files && value.files[0]) {
		var reader = new FileReader();
		
		reader.onload = function(e) {
			switch(num){
				case 1 : $("#contentimg1").attr("src", e.target.result); break;
				case 2 : $("#contentimg2").attr("src", e.target.result); break;
				case 3 : $("#contentimg3").attr("src", e.target.result); break;
			}
		}
		
		reader.readAsDataURL(value.files[0]);
	}
}
</script>
<style>
#mealArea{
width:100%;
margin:0 auto;
background:white;
text-align:center;
}
#mealArea td{
width:33%;
height:33%;
}
#mealArea th{
padding:10px;
background:orange;
}

	.main-panel {
	    position: relative;
	    width: calc(100% - 240px);
	    height: 100vh;
	    min-height: 100%;
	    float: right;
	    transition: all .3s;
	    padding-top:100px;
	    padding-left: 3%;
	    padding-right: 3%;
	}
#ta{
width:80%;
height:300px;
border-top:none;
}
</style>
</head>
<body>
<form action="writerMeal2.ml" method="post" encType="multipart/form-data">

	<jsp:include page="../common/menubar.jsp"/>
	<div class="main-panel" alt="your image" id="firstContentArea">
	
<div class="pageName">
			<table id="btntable">
				<tr>
					<td colspan="14">
						<img src="${contextPath }/resources/images/schedule.png" alt="" /><label style="font-weight:bold; font-size: 20px!important;">식단표작성</label>
					</td>
					<td>
						<input type="button" id="datepicker" value="날짜선택">
					</td>
					</tr>
				
			</table>
</div>
<hr/>
<br><br>
<table id="mealArea">
<tr><th colspan="3"> 
<button>&lt;</button>
<c:out value="${ day }"/>
 <button>&gt;</button>
 </th></tr>
<tr>
<td>오전간식<br>
<div id="mealContent1" class="picture">
	<img src="${contextPath }/resources/images/plus.PNG" id="contentimg1" name="photo" width="80%" height="80%">
</div>
</td>
<td>점심간식<br>
<div id="mealContent2" class="picture">
	<img src="${contextPath }/resources/images/plus.PNG" id="contentimg2" name="photo" width="80%" height="80%">
</div>
</td>
<td>오후간식<br>
<div id="mealContent3" class="picture">
	<img src="${contextPath }/resources/images/plus.PNG" id="contentimg3" name="photo" width="80%" height="80%">
</div>
</td>
</tr>
<tr>
<td><textarea id="ta" name="mealContent"></textarea></td>
<td><textarea id="ta" name="mealContent"></textarea></td>
<td><textarea id="ta" name="mealContent"></textarea></td>
</tr>

<tr>
<td><input type="submit" value="저장"/></td>
</tr>
</table>
</div>
<div id="fileArea">
	<input type="file" id="thumbnailImg1" multiple="multiple" name="file" onchange="loadImg(this, 1)">
	<input type="file" id="thumbnailImg2" multiple="multiple" name="file" onchange="loadImg(this, 2)">
	<input type="file" id="thumbnailImg3" multiple="multiple" name="file" onchange="loadImg(this, 3)">
</div>
</form>
</body>
</html>
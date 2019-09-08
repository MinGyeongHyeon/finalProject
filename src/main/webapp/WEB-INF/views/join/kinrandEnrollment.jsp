<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
<!DOCTYPE html>
<html>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link href="https://fonts.googleapis.com/css?family=Poor+Story&display=swap" rel="stylesheet">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body{
background:white;
font-family: 'Poor Story', cursive;
margin:0 auto;
}

html{
	width:80%;
	margin:0 auto;
}
.register{
	padding-left:60px;

}
input,select{
  	width: 80%;
  	padding: 12px 20px;
 	margin: 10px auto;
 	display: inline-block;
  	border: 1px solid #ccc;
  	border-radius: 4px;
 	box-sizing: border-box;
	
}

.name{
	padding-left:150px;
	padding-right:150px;
	margin:0 auto;	
	border-radius: 5px;
	background-color:#ffdb4d;
	text-align:center;	
}
h3, h2{
	text-align:left;
}
</style>

<script>
function plus(){
	$("<input type='text' placeholder='반 이름을 입력' name='className'><br><br>").clone(false).appendTo($('.option'));
 }
</script>

</head>
<body>
<c:set var="contextPath" value="${ pageContext.servletContext.contextPath }" scope="application" />
<form action="kinrand.me" method="post">

<input type="hidden" value="${ select.userNo }" name="kinderNo"/>

<h1 align="center">
<img src="${ contextPath }/resources/images/kindergartenicon.png" width="80px" align="center">
유치원 등록
<img src="${ contextPath }/resources/images/kindergartenicon.png" width="80px" align="center"></h1>
<hr>
<div class="name">
<h3>원 이름
<img src="${ contextPath }/resources/images/baby.png" width="60px" align="center">
</h3>
<input type="text" placeholder="원 이름을 입력해 주세요." name="kinderName"><br>
<h3>원 전화번호 
<img src="${ contextPath }/resources/images/phone.png" width="50px" align="center">
</h3>
<input type="text" placeholder="원 번호를 입력해 주세요." name="phone"><br>
<h3>원장님 이름
<img src="${ contextPath }/resources/images/card.png" width="50px" align="center">
</h3>
<input type="text" value="${ select.userName }"  name="userName" disabled>
<br><br>
<h2>원 위치
<img src="${ contextPath }/resources/images/location.png" width="50px" align="center">
</h2>
<select name="sido" id="sido" aria-required="true" aria-invalid="false">

	<option value="0">시/도 선택</option>
	<option value="서울특별시">서울특별시</option>
	<option value="부산광역시">부산광역시</option>
	<option value="대구광역시">대구광역시</option>
	<option value="인천광역시">인천광역시</option>
	<option value="광주광역시">광주광역시</option>
	<option value="대전광역시">대전광역시</option>
	<option value="울산광역시">울산광역시</option>
	<option value="세종특별자치시">세종특별자치시</option>
	<option value="경기도">경기도</option>
	
	</select>
	
		<select class="form-control valid" name="sigungu" id="sigungu" aria-required="true" aria-invalid="false">
		</select>
		
		<br>
		<input type="text" placeholder="상세주소" name="address3">
<h2>반 정보
<img src="${ contextPath }/resources/images/happy.png" width="50px" align="center">
</h2>

<div class="option">
<input type="text" placeholder="반 이름을 입력해주세요"  name='className'><br><br>
</div>
<button onclick="plus()" class="btn btn-primary" type="button">추가하기</button>
<button type="submit" align="center" class="btn btn-primary">등록</button>
</div>
</form>
<br><br><br><br>
<br><br><br><br><br><br><br><br><br><br><br>

<script>


	    $('#sido').change(function(){

			var sidoSelect = $('#sido');
			var gunguSelect = $('#sigungu');
	    	
			var count = $(this).val();
			
			if(count == 0){
				
				gunguSelect.children().remove();
			
			}else if(count == "서울특별시"){
				
				gunguSelect.children().remove();
				
				gunguSelect.append( "<option value='강남구'>강남구</option> <option value='강동구'>강동구</option><option value='강북구'>강북구</option><option value='강서구'>강서구</option><option value='관악구'>관악구</option><option value='광진구'>광진구</option><option value='구로구'>구로구</option><option value='금천구'>금천구</option><option value='노원구'>노원구</option><option value='도봉구'>도봉구</option><option value='동대문구'>동대문구</option><option value='동작구'>동작구</option><option value='마포구'>마포구</option><option value='서대문구'>서대문구</option><option value='서초구'>서초구</option><option value='성동구'>성동구</option><option value='성북구'>성북구</option><option value='송파구'>송파구</option><option value='양천구'>양천구</option><option value='영등포구'>영등포구</option><option value='용산구'>용산구</option><option value='은평구'>은평구</option><option value='종로구'>종로구</option><option value='중구'>중구</option><option value='중랑구'>중랑구</option>");
			}else if(count == "부산광역시"){
				
				gunguSelect.children().remove();
				
				gunguSelect.append("<option value='강서구'>강서구</option><option value='금정구'>금정구</option><option value='기장군'>기장군</option><option value='남구'>남구</option><option value='동구'>동구</option><option value='동래구'>동래구</option><option value='부산진구'>부산진구</option><option value='북구'>북구</option><option value='사상구'>사상구</option><option value='사하구'>사하구</option><option value='서구'>서구</option><option value='수영구'>수영구</option><option value='연제구'>연제구</option><option value='영도구'>영도구</option><option value='중구'>중구</option><option value='해운대구'>해운대구</option>");
			}else if(count == "대구광역시"){
				
				gunguSelect.children().remove();
				
				gunguSelect.append("<option value='남구'>남구</option><option value='달서구'>달서구</option><option value='달성군'>달성군</option><option value='동구'>동구</option><option value='북구'>북구</option><option value='서구'>서구</option><option value='수정구'>수성구</option><option value='중구'>중구</option>");
				
			}else if(count == "인천광역시"){
				gunguSelect.children().remove();
				
				gunguSelect.append("<option value='강화군'>강화군</option><option value='계양구'>계양구</option><option value='남구'>남구</option><option value='남동구'>남동구</option><option value='동구'>동구</option><option value='부평구'>부평구</option><option value='서구'>서구</option><option value='연수구'>연수구</option><option value='옹진군'>옹진군</option><option value='중구'>중구</option>");
				
			}else if(count == "광주광역시"){
				
				gunguSelect.children().remove();
				
				gunguSelect.append("<option value='광산구'>광산구</option><option value='남구'>남구</option><option value='동구'>동구</option><option value='북구'>북구</option><option value='서구'>서구</option>");
			
			}else if(count == "대전광역시"){
				gunguSelect.children().remove();
				
				gunguSelect.append("<option value='대덕구'>대덕구</option><option value='동구'>동구</option><option value='서구'>서구</option><option value='유성구'>유성구</option><option value='중구'>중구</option>");
				
			}else if(count == "울산광역시"){
				gunguSelect.children().remove();
				
				gunguSelect.append("<option value='남구'>남구</option><option value='동구'>동구</option><option value='북구'>북구</option><option value='울주군'>울주군</option><option value='중구'>중구</option>");
				
			}else if(count == "세종특별자치시"){
				
				gunguSelect.children().remove();
				
				gunguSelect.append("<option value='세종특별차지시'>세종특별자치시</option>");
				
			}else if(count == "경기도"){
				
				gunguSelect.children().remove();
				
				gunguSelect.append("<option value='가평군'>가평군</option><option value='고양시 덕양구'>고양시 덕양구</option><option value='고양시 일산동구'>고양시 일산동구</option><option value='고양시 일산서구'>고양시 일산서구</option><option value='과천시'>과천시</option><option value='광명시'>광명시</option><option value='광주시'>광주시</option><option value='구리시'>구리시</option><option value='군포시'>군포시</option><option value='김포시'>김포시</option><option value='남양주시'>남양주시</option><option value='동두천시'>동두천시</option><option value='부천시 소사구'>부천시 소사구</option><option value='부천시 오정구'>부천시 오정구</option><option value='부천시 원미구'>부천시 원미구</option><option value='성남시 분당구'>성남시 분당구</option><option value='성남시 수정구'>성남시 수정구</option><option value='성남시 중원구'>성남시 중원구</option><option value='수원시 권선구'>수원시 권선구</option><option value='수원시 영통구'>수원시 영통구</option><option value='수원시 장안구'>수원시 장안구</option><option value='수원시 팔달구'>수원시 팔달구</option><option value='시흥시'>시흥시</option><option value='안산시 단원구'>안산시 단원구</option><option value='안산시 상록구'>안산시 상록구</option><option value='안성시'>안성시</option><option value='안양시 동안구'>안양시 동안구</option><option value='안양시 만안구'>안양시 만안구</option><option value='양주시'>양주시</option><option value='양평군'>양평군</option><option value='여주시'>여주시</option><option value='연천군'>연천군</option><option value='오산시'>오산시</option><option value='용인시 기흥구'>용인시 기흥구</option><option value='용인시 수지구'>용인시 수지구</option><option value='용인시 처인구'>용인시 처인구</option><option value='의왕시'>의왕시</option><option value='의정부시'>의정부시</option><option value='이천시'>이천시</option><option value='파주시'>파주시</option><option value='평택시'>평택시</option><option value='포천시'>포천시</option><option value='하남시'>하남시</option><option value='화성시'>화성시</option>");
				
			}
			
			
			
			
	   	 }); 
	    


    

</script>

</body>

</html>
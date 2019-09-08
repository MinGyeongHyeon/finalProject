<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<style>
#topbar{
background:white;
text-align:center;
}
#loginBtn{
float:right;
margin-right:2%;
}
table td{
text-align:center;
padding:20px;
font-weight:5px;
}

table {
background:white;
}
.searchkinder{
background:#8080ff;
padding:6px;
margin-left:260px;
margin-right:260px;
color:white;
}

input,select{
	border-radius: 4px;
}

.searchresult{
	width:250px;
	height:250px;
	color:pink;
}
</style>
</head>
<body>
<div id="topbar" style='height:60px'>
유치원 검색
</div>
<br><br><br>
<div id="content">
	<div align="center" class="searchkinder">
		<h5>원검색</h5>
	</div>	
	<input type="hidden"  value="${ km.childrenNo }" id="childrenNo"/>
	<table align="center">
		<tr><td colspan="2">
		지역을 먼저 선택 후 원 명을 입력해 주세요.
		</td></tr>
		<tr>
		<td>시/군/구 선택</td>
		<td>
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
		</td>
		
		<td>
		
	<select class="form-control valid" name="sigungu" id="sigungu" aria-required="true" aria-invalid="false">
	<option value="0">시/도 선택</option>
		</select>
		
		</td>
		</tr>
		<tr id="searchlist">
		<td>원 명 검색</td>
		<td><input type="text" id="kinName" placeholder="원 명을 입력해 주세요."></td>
		<td><button id="searchKin">검색</button></td>
		</tr>
		
		
		
	</table>
	
	<script>
	
		$('#sigungu').change(function(){
			
			
			var sido = $('#sido').val();
			var sigungu = $('#sigungu').val();
			var kinName = $('#kinName').val();
			var kinderAddress = sido + " " + sigungu;
			
			var childrenNo = $('#childrenNo').val() - 0;
			
			
			var $tr = $('#searchlist');
			
			var $remove = $('.remove');
			
			$remove.remove();
			
			
			$.ajax({
				url:"selectKin.kl",
				data:{kinderAddress:kinderAddress , kinName:kinName},
				type:"post",
				contentType: 'application/x-www-form-urlencoded; charset=euc-kr',
				success:function(data){
					
					
					for(var i = 0 ; i < data.list.length ; i++){
						
						var $input = $('<input type="hidden">');
						var $tr2 = $('<tr class="remove">');	
						var $label= $('<label>');
						var $td = $("<td colspan='2' text-align='center'>");
						var $td2 = $("<td colspan='1' text-align='center'>")
						var $td3 = $("<td colspan='1' style='display:none'>");
						var $h2 = $('<h3>');
						
						
						$input.val(data.list[i].kinderNo);
						$h2.text(data.list[i].kinderName + "");
						$label.text("      "+data.list[i].kinderAddress );
						$td.append($label);
						$td2.append($h2);
						$td3.append($input);
						
						$tr2.append($td2);
						$tr2.append($td);
						$tr2.append($td3);
						
						
						$tr.after($tr2);
						
					}
					
					
				$(".remove").click(function(){
					
				var kinderNo = $(this).children("td").children("input").val() -0;
				var $test = $(this);
					
					$(".test").remove();
				
					$.ajax({
						
						url:"selectKinderclass.kl",
						type:"post",
						data:{kinderNo:kinderNo},
						success:function(data){
						
							
							var $tr4 = $('<tr class="test">');	
							
							for(var i = 0 ; i < data.list2.length; i++){
								
								console.log($test);
						    var $td4 = $("<td colspan='1'>");
							var $button = $('<button class="classesNo">');
							var $input3 = $("<input type='hidden'>");
							
							$button.text(data.list2[i].className);
							$input3.val(data.list2[i].classNo);
							
							$td4.append($button);
							$td4.append($input3);
							$tr4.append($td4);

							
							$test.after($tr4); 
							
								
							}
							
							
							$('.classesNo').click(function(){
								
								
								var kinder = $(this).parent().parent().prev().children().eq(0).children().text();
								
								
								var classesNo = $(this).next().val();
									
								var check = confirm(kinder + "의 " + $(this).text() + " 에 승인요청 을 보내시겠습니까 ?");
								
								
								if(check){
								
									 $.ajax({
										url:"insertchildren.kl",
										type:"post",
										data:{childrenNo:childrenNo,kinderNo:kinderNo},
										success:function(data){
											
											alert("승인요청이 완료 되었습니다!");
											
											location.href='loginPage.pl';
											
										}
									
									}); 
							
								}
								
								
							});
							
				
							
							
							
							
							
						}
						
					});
				
				
				});
				
				}
				
			
			});
			
			
			
		});
	
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
</div>
</body>
</html>
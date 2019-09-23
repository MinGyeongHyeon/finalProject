<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Sunflower:300&display=swap" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
  
  <style>
  
body{
font-family: 'Sunflower', sans-serif;
font-size:18px;
}

  </style>
  
<body>

<table style="wdith:100%" align="center">
	<tr>
		<th style="width:40%">이름</th>
		<th>옮길 반</th>
	</tr>
	<c:forEach var="i" items="${ list3 }">
	<tr>
		<td>
			<c:if test="${ empty childrenName }">
			<label for="">${ i.userName }</label>
			</c:if>
			<c:if test="${ empty userName }">
			<label for="">${ i.childrenName }</label>
			</c:if>
		</td>
		<td >
			<select class="changeClass" id="">
			<c:forEach var="c" items="${ list2 }">
				<c:if test="${ i.className ne c.className }">
				<option value="${ c.className }">${ c.className }</option>
				</c:if>
			</c:forEach>
			</select>
		</td>
		<td></td>
			<td><button class="btn btn-default classsu" >수정</button></td>
			<td><input type="hidden" value="${ i.classNo }"/></td>
	</tr>

	</c:forEach>
		
		

</table>

<script>

$('.classsu').click(function(){
	
	var classNo = $(this).parent().next().children().val();
	var className = $(this).parent().parent().children().eq(1).children().val();
	var $remove2 = $(this).parent().parent();
	
	
	$.ajax({
		
		url:"kinderchangeClass.kl",
		data:{classNo:classNo,className:className},
		type:"post",
		success:function(data){
			
			console.log(data.result);
			
			if(data.result == 0){
				
				alert("수정 도중 오류가 발생하였습니다. 잠시후 다시 시도해주세요");
				
			}else{
			
				$remove2.remove();
				
				
			}
			
			
		}
		
	});
	
	
	
});

</script>


</body>
</html>
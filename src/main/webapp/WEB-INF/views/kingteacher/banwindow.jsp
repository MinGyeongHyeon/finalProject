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
			<select name="" id="">
			<c:forEach var="c" items="${ list2 }">
				<c:if test="${ i.className ne c.className }">
				<option value="${ c.className }">${ c.className }</option>
				</c:if>
			</c:forEach>
			</select>
		</td>
		<td></td>
			<td><button class="btn btn-default classsu" >수정</button></td>
	</tr>

	</c:forEach>
		
		

</table>

<script>

$('.classsu').click(function(){
	
	
	
	
});

</script>


</body>
</html>
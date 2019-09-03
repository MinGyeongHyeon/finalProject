<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
#userImg{
margin:0 auto;
}
</style>
</head>
<body>
<div id="topbar">
키즈랜드
<button onclick="#" id="loginBtn">로그인</button>
</div>
<br><br><br>
<div id="content">

	<form method="post" enctype="multipart/form-data" action="kidjoin.me">
	 
	<input type="hidden" value="${ select.userNo }" name="userNo"/>
	<table align="center">
		<tr><th>자녀 등록</th></tr>
		
		<tr>
		
		<td colspan="2">
		<div id="userImg" style="background-image: url('${ contextPath }/resources/images/woman.png');background-size:100%;"></div>
		</td>
		
		</tr>
		
		<tr>
		<td colspan="3">
    	 <input type="file" name="pic" />
   		 <input type="submit" value="등록하기" />
		</td>
		</tr>
		
		<tr>
		<td colspan="2">이름 : <input type="text" placeholder="자녀의 이름을 등록해주세요" name="childrenName"></td>
		</tr>
		
		<tr>
		<td>생년월일</td>
		<td>
		
<script language="javascript"> 

var today = new Date(); 
var toyear = parseInt(today.getYear()) +""; 
var start = toyear - 5; 
var end = toyear - 30 ; 


if(start > 100){
	var start2 = (start - 100) + 2000;
}

if(end < 100){
	var end2 = (end) + 1900;
}

console.log(typeof(end));
console.log(typeof(start2));



document.write("<font size=2><select name=birth1>"); 
document.write("<option value='' selected name='test'>"); 
for (i=start2;i>=end2;i--) document.write("<option>"+i); 
document.write("</select>년  "); 

document.write("<select name=birth2>"); 
document.write("<option value='' selected name='test'>"); 
for (i=1;i<=12;i++) document.write("<option>"+i); 
document.write("</select>월  "); 

document.write("<select name=birth3>"); 
document.write("<option value='' selected name='test'>"); 
for (i=1;i<=31;i++) document.write("<option>"+i); 
document.write("</select>일  </font>"); 

</script> 
</td>
		</tr>
		
		<tr>
		<td colspan="2">성별 :  
		여아<input type="radio" value="F" name="gender">
		남아<input type="radio" value="M" name="gender">
		</td>
		</tr>
		<tr>
		<td colspan="2">
		<button type="submit">등록하기</button>
		</td>
		</tr>
		</table>
		
		</form>
	
</div>





</body>
</html>
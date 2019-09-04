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
padding:20px;
font-weight:5px;
}
#childrenName{
width:70%;
height:40%;
border-radius:5px;
}
table {
background:white;
width:50%;
}
#join{
	background:#665b55;
		color:#fff;
		border:none;
		border-radius: 5px; 
		width:30%;
		margin:0 auto;
		align:center;
}
#userImg{
margin:0 auto;
}
.fileList{
width:50%;
align:center;
margin:0 auto;
}
#face{
		background-image:url("/images/baby.png");
		color:white;
		height:30%;
		border-radius: 5px;
		text-align:center;
		padding-top:5px;
	}
	
	.fileList input{
		background:#fff;
		width:50%;
		height:30px;
		color:#000;
		border:1px solid white;
		border-bottom:1px solid #de2c41;
		padding-top:5px;
		margin-top:20px;
		
	}
	#fileBtn{
	float:right;
	border:none;
	background:#665b55;
	width:13%;
	height:10%;
	color:white;
	text-align:center;
	margin-right:20%;
	margin-top:3%;
	
	}
</style>
</head>
<body>
<br><br><br>
<div id="content">

	<form method="post" enctype="multipart/form-data" action="kidjoin.me">
	 
	<input type="hidden" value="${ select.userNo }" name="userNo"/>
	<table align="center">
		<tr><th><h1>자녀 등록</h1></th></tr>
		
		<tr rowspan="3">
		
		<td colspan="5">
<%-- <img src="${ contextPath }/resources/images/baby.png" width="60px" align="center"> --%>
		<label for="selectFile" id="face">파일선택</label>

		</td>
		
		</tr>
		
		<tr>
		<td colspan="3">
    	 <div class="fileList" style="width:100%;">
								<input type="text" name="fileName" class="fileName">
								<input type="file" value="추가" id="selectFile" class="selectFile" multiple hidden/>
   		 <input type="submit" value="등록하기" id="fileBtn"/>
							</div>
		</td>
		</tr>
		
		<tr>
		<td colspan="2">이름 : <input type="text" placeholder="자녀의 이름을 등록해주세요" name="childrenName" id="childrenName"></td>
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
		<button type="submit" id="join">등록하기</button>
		</td>
		</tr>
		</table>
		
		</form>
	
</div>





</body>
</html>
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
	<table align="center">
		<tr><td colspan="3">
		지역을 먼저 선택 후 원 명을 입력해 주세요.
		</td></tr>
		<tr>
		<td>시/군/구 선택</td>
		<td>
		<select>
			<option>시/도 선택</option>
			<option>서울시</option>
			<option>인천광역시</option>
		</select>
		</td>
		<td>
		<select>
			<option>시/군/구 선택</option>
			<option>강남구</option>
			<option>부평구</option>
		</select>
		</td>
		</tr>
		<tr>
		<td>원 명 검색</td>
		<td><input type="text" id="name" placeholder="원 명을 입력해 주세요."></td>
		<td><button>검색</button></td>
		</tr>
		<tr>
		<td colspan="8" text-align="center">검색 결과 리스트</td>
		</tr>
		
	</table>
<!-- 	<table>
	<tr><td>원 검색</td></tr>
	<tr>
	<td>
	<div>
	<label>*지역을 먼저 선택 후 원 명을 입력해 주세요.</label><br>
	시/군/구 선택 : 
	<select>
			<option>시/도 선택</option>
			<option>서울시</option>
			<option>인천광역시</option>
		</select>
		<select>
			<option>시/군/구 선택</option>
			<option>강남구</option>
			<option>부평구</option>
		</select>
		<br>
		원 명 선택 : <input type="text" id="name"><button>검색</button><br>
		<textarea></textarea>
	</div>
	</td>
	</tr>
	</table> -->
</div>
</body>
</html>
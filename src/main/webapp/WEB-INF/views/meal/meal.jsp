<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
table{
width:100%;
margin:0 auto;
background:white;
text-align:center;

}
table th{
padding:10px;
background:orange;
}
body{
width:60%;
margin:0 auto;
}
</style>
</head>
<body>
<table>
<tr><th colspan="3">
<button>이전</button>
 2019년 8월
 <button>다음</button>
 </th></tr>
<tr>
<td>오전간식<br>
<img src="${ contextPath }/resources/images/kindergartenicon.png" width="80px" align="center">
</td>
<td>점심간식<br>
<img src="${ contextPath }/resources/images/kindergartenicon.png" width="80px" align="center">
</td>
<td>오후간식<br>
<img src="${ contextPath }/resources/images/kindergartenicon.png" width="80px" align="center">
</td>
</tr>
<tr>
<td>오전밥</td>
<td>점심간식</td>
<td>오후밥</td>
</tr>
</table>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
body{
margin:5px auto;
padding-left:10px;
width:80%;
}
button{
width:5%;
height:3%;
border-radius:5px;
background:lightblue;
margin:0 auto;
align:center;
}
input{
width:80%;

}
#btnArea{
margin:0 auto;
align:center;
}
</style>
</head>
<body>
<h1>반 추가</h1>
<hr>
<h2>반 이름</h2>
<input type="text" placeholder="내용을 입력해주세요"/>
<hr>
<div id="btnArea">
<button>취수</button>
<button>저장</button>
</div>
</body>
</html>
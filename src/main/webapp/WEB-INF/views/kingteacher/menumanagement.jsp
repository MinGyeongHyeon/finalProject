<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>

#content{
float:right;
margin-right:20%;
margin-top:5%;
background:white;
width:50%;
}
#sidebar{
float:left;
margin-left:20%;
margin-top:5%;
}
p{
color:blue;
margin-left:5%;
}
h1{
margin-left:5%;
}
#saveBtn{
margin-left:38%;
width:25%;
height:7%;
background:orange;
color:white;
border-radius:15px;
}
.radioArea{
background:lightgray;
border-radius:10px;
padding:5px;
width:90%;
margin:0 auto;
}
label{

}
h3{
margin-left:5%;
}
</style>
</head>
<header>
<jsp:include page="../common/teacherHeader.jsp"/>
</header>
<body>
	<div id="sidebar">
	<jsp:include page="../common/directorManagementSideMenu.jsp"/>
	</div>
	<div id="content">
	<div>
	<h1>�޴� ����</h1><hr>
	<p>Ȩ���������� ����� ����� on/off���ּ���.</p>
	</div>
	<h3>�˸���</h3>
	<div class="radioArea">
	
	<c:if test="${ of.announcement eq 'Y' }">
	<label>�ѱ�<input type="radio" name="alrimjang" checked></label>
	<label>����<input type="radio" name="alrimjang"></label>
	</c:if>
	<c:if test="${ of.announcement eq 'N' }">
	<label>�ѱ�<input type="radio" name="alrimjang"></label>
	<label>����<input type="radio" name="alrimjang" checked></label>
	</c:if>
	
	</div>
	<h3>��������</h3>
	<div class="radioArea">
	<c:if test="${ of.boardNotice eq 'Y' }">
	<label>�ѱ�<input type="radio" name="boardNotice" checked></label>
	<label>����<input type="radio" name="boardNotice"></label>
	</c:if>
	<c:if test="${ of.boardNotice eq 'N' }">
	<label>�ѱ�<input type="radio" name="boardNotice" ></label>
	<label>����<input type="radio" name="boardNotice" checked></label>
	</c:if>
	</div>
	<h3>�ٹ�</h3>
	<div class="radioArea">
	<c:if test="${ of.album eq 'Y' }">
	<label>�ѱ�<input type="radio" name="album" checked></label>
	<label>����<input type="radio" name="album"></label>
	</c:if>
	<c:if test="${ of.album eq 'N' }">
	<label>�ѱ�<input type="radio" name="album" ></label>
	<label>����<input type="radio" name="album"checked></label>
	</c:if>
	</div>
	<h3>����ǥ</h3>
	<div class="radioArea">
	<c:if test="${ of.schedule eq 'Y' }">
	<label>�ѱ�<input type="radio" name="schedule" checked></label>
	<label>����<input type="radio" name="schedule"></label>
	</c:if>
	<c:if test="${ of.schedule eq 'N' }">
	<label>�ѱ�<input type="radio" name="schedule" ></label>
	<label>����<input type="radio" name="schedule" checked></label>
	</c:if>
	</div>
	<h3>�����Ƿڼ�</h3>
	<div class="radioArea">
	<c:if test="${ of.dosage eq 'Y' }">
	<label>�ѱ�<input type="radio" name="dosage" checked></label>
	<label>����<input type="radio" name="dosage"></label>
	</c:if>
	<c:if test="${ of.dosage eq 'N' }">
	<label>�ѱ�<input type="radio" name="dosage" ></label>
	<label>����<input type="radio" name="dosage" checked></label>
	</c:if>
	</div>
	<h3>�Ͱ����Ǽ�</h3>
	<div class="radioArea">
	<c:if test="${ of. homecoming eq 'Y'}">
	<label>�ѱ�<input type="radio" name="homecoming" checked></label>
	<label>����<input type="radio" name="homecoming"></label>
	</c:if>
	<c:if test="${ of. homecoming eq 'N'}">
	<label>�ѱ�<input type="radio" name="homecoming" ></label>
	<label>����<input type="radio" name="homecoming" checked></label>
	</c:if>
	</div>
	<h3>�⼮��</h3>
	<div class="radioArea">
	<c:if test="${of.attendance eq 'Y' }">
	<label>�ѱ�<input type="radio" name="attendance" checked></label>
	<label>����<input type="radio" name="attendance"></label>
	</c:if>
	<c:if test="${of.attendance eq 'N' }">
	<label>�ѱ�<input type="radio" name="attendance" ></label>
	<label>����<input type="radio" name="attendance" checked></label>
	</c:if>
	</div>
	<h3>�Ĵ�ǥ</h3>
	<div class="radioArea">
	<c:if test="${ of.meal eq 'Y' }">
	<label>�ѱ�<input type="radio" name="meal" checked></label>
	<label>����<input type="radio" name="meal"></label>
	</c:if>
	<c:if test="${ of.meal eq 'N' }">
	<label>�ѱ�<input type="radio" name="meal" ></label>
	<label>����<input type="radio" name="meal" checked></label>
	</c:if>
	</div>
	<h3>������</h3>
	<div class="radioArea">
	<label>�ѱ�<input type="radio" name="gohome" checked></label>
	<label>����<input type="radio" name="gohome"></label>
	</div>
	
	<br><br>
	<button id="saveBtn">����</button><br><br><br>
	</div>
</body>
</html>
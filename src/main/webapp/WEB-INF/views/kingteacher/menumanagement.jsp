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
	
	<form action="menuOnOff.kl" method="post">
	<input type="hidden" value="${ of.kinderNo }" name="kinderNo"/>
	<div>
	<h1>�޴� ����</h1><hr>
	<p>Ȩ���������� ����� ����� on/off���ּ���.</p>
	</div>
	<h3>�˸���</h3>
	<div class="radioArea">
	
	<c:if test="${ of.announcement eq 'Y' }">
	<label>�ѱ�<input type="radio" name="announcement" value="Y" checked></label>
	<label>����<input type="radio" name="announcement" value="N" ></label>
	</c:if>
	<c:if test="${ of.announcement eq 'N' }">
	<label>�ѱ�<input type="radio" name="announcement" value="Y" ></label>
	<label>����<input type="radio" name="announcement"  value="N" checked></label>
	</c:if>
	
	</div>
	<h3>��������</h3>
	<div class="radioArea">
	<c:if test="${ of.boardNotice eq 'Y' }">
	<label>�ѱ�<input type="radio" name="boardNotice"  value="Y" checked></label>
	<label>����<input type="radio" name="boardNotice" value="N" ></label>
	</c:if>
	<c:if test="${ of.boardNotice eq 'N' }">
	<label>�ѱ�<input type="radio" name="boardNotice" value="Y"  ></label>
	<label>����<input type="radio" name="boardNotice"  value="N" checked></label>
	</c:if>
	</div>
	<h3>�ٹ�</h3>
	<div class="radioArea">
	<c:if test="${ of.album eq 'Y' }">
	<label>�ѱ�<input type="radio" name="album"  value="Y" checked></label>
	<label>����<input type="radio" name="album" value="N" ></label>
	</c:if>
	<c:if test="${ of.album eq 'N' }">
	<label>�ѱ�<input type="radio" name="album"  value="Y" ></label>
	<label>����<input type="radio" name="album" value="N" checked></label>
	</c:if>
	</div>
	<h3>����ǥ</h3>
	<div class="radioArea">
	<c:if test="${ of.schedule eq 'Y' }">
	<label>�ѱ�<input type="radio" name="schedule"  value="Y" checked></label>
	<label>����<input type="radio" name="schedule" value="N" ></label>
	</c:if>
	<c:if test="${ of.schedule eq 'N' }">
	<label>�ѱ�<input type="radio" name="schedule"  value="Y" ></label>
	<label>����<input type="radio" name="schedule"  value="N" checked></label>
	</c:if>
	</div>
	<h3>�����Ƿڼ�</h3>
	<div class="radioArea">
	<c:if test="${ of.dosage eq 'Y' }">
	<label>�ѱ�<input type="radio" name="dosage"  value="Y" checked></label>
	<label>����<input type="radio" name="dosage" value="N" ></label>
	</c:if>
	<c:if test="${ of.dosage eq 'N' }">
	<label>�ѱ�<input type="radio" name="dosage" value="Y" ></label>
	<label>����<input type="radio" name="dosage" value="N"  checked></label>
	</c:if>
	</div>
	<h3>�Ͱ����Ǽ�</h3>
	<div class="radioArea">
	<c:if test="${ of. homecoming eq 'Y'}">
	<label>�ѱ�<input type="radio" name="homecoming" value="Y"  checked></label>
	<label>����<input type="radio" name="homecoming" value="N" ></label>
	</c:if>
	<c:if test="${ of. homecoming eq 'N'}">
	<label>�ѱ�<input type="radio" name="homecoming" value="Y"  ></label>
	<label>����<input type="radio" name="homecoming"  value="N" checked></label>
	</c:if>
	</div>
	<h3>�⼮��</h3>
	<div class="radioArea">
	<c:if test="${of.attendance eq 'Y' }">
	<label>�ѱ�<input type="radio" name="attendance" value="Y"  checked></label>
	<label>����<input type="radio" name="attendance" value="N" ></label>
	</c:if>
	<c:if test="${of.attendance eq 'N' }">
	<label>�ѱ�<input type="radio" name="attendance" value="Y"  ></label>
	<label>����<input type="radio" name="attendance" value="N"  checked></label>
	</c:if>
	</div>
	<h3>�Ĵ�ǥ</h3>
	<div class="radioArea">
	<c:if test="${ of.meal eq 'Y' }">
	<label>�ѱ�<input type="radio" name="meal" value="Y"  checked></label>
	<label>����<input type="radio" name="meal" value="N" ></label>
	</c:if>
	<c:if test="${ of.meal eq 'N' }">
	<label>�ѱ�<input type="radio" name="meal"  value="Y" ></label>
	<label>����<input type="radio" name="meal"  value="N" checked></label>
	</c:if>
	</div>
	<h3>������</h3>
	<div class="radioArea">
	<c:if test="${ of.inOut eq 'Y' }">
	<label>�ѱ�<input type="radio" name="inOut"  value="Y" checked></label>
	<label>����<input type="radio" name="inOut" value="N" ></label>
	</c:if>
	<c:if test="${ of.inOut eq 'N' }">
	<label>�ѱ�<input type="radio" name="inOut"  value="Y" ></label>
	<label>����<input type="radio" name="inOut" value="N" checked></label>
	</c:if>
	</div>
	
	<br><br>
	<button type="submit" class="btn btn-info" id="saveBtn">����</button><br><br><br>
	
	</form>
	
	</div>
	
	<c:if test="${ not empty msg }">
	
	<script>
	$(function(){
	
		
		var kinderNo = ${ of.kinderNo }
		alert('${msg}');
		
		location.href="kindermenu.kl?kinderNo=" + kinderNo;
		
	})
	
	</script>
	
	</c:if>
	
</body>
</html>
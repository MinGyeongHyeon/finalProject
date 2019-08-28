<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#content{
text-align:center;
}
img{
height:100%;
width:100%;
}
body{
margin-left:2%;
margin-right:2%;
}
</style>
</head>
<body>
<c:set var="contextPath"
			value="${ pageContext.servletContext.contextPath }"
			scope="application" />
			
	<jsp:include page="main-include.jsp"/>
	<form>
	<%-- <div id="content" style="background-image: URL(${ contextPath }/resources/images/introduce.PNG); background-size:100% 100%;">
	
	
	</div> --%>
	<img src="${ contextPath }/resources/images/introduce.PNG"/>
	
	</form>
	<jsp:include page="../common/footer.jsp"/>
	
</body>
</html>
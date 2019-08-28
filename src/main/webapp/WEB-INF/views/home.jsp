<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false" pageEncoding="UTF-8"%>
<html>
<head>
<title>Home</title>
</head>
<link rel="stylesheet" href="${ contextPath }/resources/css/includeCss.css">

<body>
	<c:set var="contextPath" value="${ pageContext.servletContext.contextPath }" scope="application"/>

	<%-- <jsp:include page="main/introduceService.jsp"/> --%>
	<%-- <jsp:include page="main/introduceService.jsp"/> --%>
	<%-- <jsp:include page="join/searchGarden.jsp"/> --%>
	<%-- <jsp:include page="join/kinrandEnrollment.jsp"/> --%>
	<%-- <jsp:include page="admin/companyList.jsp"/> --%>
	<jsp:include page="kingteacher/banplus.jsp"/>

</body>
</html>

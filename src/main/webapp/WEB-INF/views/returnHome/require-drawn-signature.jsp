<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<head>
  <meta charset="utf-8">
  <title>Require a Drawn Signature · Signature Pad</title>
  <style>
    body { font: normal 100.01%/1.375 "Helvetica Neue",Helvetica,Arial,sans-serif; }
  </style>
  <link href="${contextPath }/resources/css/signature/jquery.signaturepad.css" rel="stylesheet">
  
  <!--[if lt IE 9]><script src="../assets/flashcanvas.js"></script><![endif]-->

</head>
<body>
	<c:set var="contextPath" value="${ pageContext.servletContext.contextPath }" scope="application"/>
  <form method="post" action="" class="sigPad">
    <ul class="sigNav">
      <li class="clearButton"><a href="#clear">Clear</a></li>
    </ul>
    <div class="sig sigWrapper">
      <div class="typed"></div>
      <canvas class="pad" width="200" height="100%"></canvas>
      <input type="hidden" name="output" class="output">
    </div>
    <button type="submit">I accept the terms of this agreement.</button>
  </form>

  <!-- <script src="../jquery.signaturepad.js"></script> -->
  <script src="${contextPath }/resources/js/signature/jquery.signaturepad.js"></script>
  <script src="${contextPath }/resources/js/signature/jquery.signaturepad.js"></script>
  <script src="${contextPath }/resources/js/signature/jquery.signaturepad.js"></script>
  <script>
    $(document).ready(function() {
      $('.sigPad').signaturePad({drawOnly:true});
    });
  </script>
  <!-- <script src="../assets/json2.min.js"></script> -->
  <script src="${contextPath }/resources/js/signature/json2.min.js"></script>
</body>

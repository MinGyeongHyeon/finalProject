<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
table {
  table-layout: fixed;
  border-collapse: collapse;
}

table th, 
table td {
  padding: 16px;
  max-width: 40px;
  min-width: 40px;
  text-align: center;
  background-color: blanchedalmond;
}

.table--outter > thead > tr > th, 
.table--outter > tbody > tr > td {
  border: 1px solid black;
}

.td-2-3 { 
  padding: 0; 
}

.wapper {
  overflow: scroll;
  height: 607px;
}
#nonescroll{
overflow:none;

}
.table--inner{
width:100%;
height:100%;
}
.table--inner td {
  border-top: 1px solid black;
  border-left: 1px solid black;
  background-color: orange;
  color:black;
}

.table--inner tr:first-child td {
  border-top: none;
}

.table--inner tr td:first-child {
  border-left: none;
}
</style>
</head>
<body>
<table class="table--outter">
  <thead>
    <tr>
      <th colspan="14">${ month }</th>
    </tr>
  </thead>
    <tr>
      <td>이름</td>
      <td>
      <img id="scroll-left" src="https://mk.kakaocdn.net/dn/kidsnote/static/img/attendances/left-scroll.png">
      <img id="scroll-right" src="https://mk.kakaocdn.net/dn/kidsnote/static/img/attendances/right-scroll.png">
      </td>
      <td colspan="${ month }" rowspan="${ hmc }" class="td-2-3">
        <div class="wapper">
          <table class="table--inner">
            	<!-- 날짜 일일이 가져오기 -->
            	<%-- <c:forEach var="z" items="${ month }">
            	<tr>
            		<td><c:out value="${ month }"/></td>
            	</tr>
            	</c:forEach> --%>
            	<tr>
            	<td><c:out value="${ month }"/></td>
            	<td>2</td>
            	<td>3</td>
            	</tr>
            	<tr>
            	<td>2-1</td>
            	<td>2-2</td>
            	<td>2-3</td>
            	</tr>
            	<tr>
            	<td>3-1</td>
            	<td>3-2</td>
            	<td>3-3</td>
            	</tr>
            	<tr>
            	<td>4-1</td>
            	<td>4-2</td>
            	<td>4-3</td>
            	</tr>
            	<tr>
            	<td>5-1</td>
            	<td>5-2</td>
            	<td>5-3</td>
            	</tr>
            	<tr>
            	<td>6-1</td>
            	<td>6-2</td>
            	<td>6-3</td>
            	</tr>
            	<tr>
            	<td>7-1</td>
            	<td>7-2</td>
            	<td>7-3</td>
            	</tr>
            	<tr>
            	<td>8-1</td>
            	<td>8-2</td>
            	<td>8-3</td>
            	</tr>
            	<tr>
            	<td>9-1</td>
            	<td>9-2</td>
            	<td>9-3</td>
            	</tr>
            	<tr>
            	<td>10-1</td>
            	<td>10-2</td>
            	<td>10-3</td>
            	</tr>
            	<tr>
            	<td>11-1</td>
            	<td>11-2</td>
            	<td>11-3</td>
            	</tr>
            	<tr>
            	<td>12-1</td>
            	<td>12-2</td>
            	<td>12-3</td>
            	</tr>
            	<tr>
            	<td>13-1</td>
            	<td>13-2</td>
            	<td>13-3</td>
            	</tr>
            	<tr>
            	<td>14-1</td>
            	<td>14-2</td>
            	<td>14-3</td>
            	</tr>
          </table>

        </div>
      </td>
      <td>출석</td>
      <td>결석</td>
    </tr>
		<c:forEach var="a" items="${ list }">
		<tr>
		<td rowspan="3"><c:out value="${ a.childrenName }"/></td>
		<td>출결상태</td>
		<td rowspan="3">등원 시간</td>
		<td rowspan="3">결석일수</td>
		</tr>
		<tr><td>등원 시간</td></tr>
		<tr><td>하원 시간</td></tr>
		</c:forEach>
		</tbody>
    <tr colspan="2">
      <td>전월말 재적수</td>
      <td>입소아동</td>
      <td>퇴소아동</td>
      <td>월말 재적수</td>
      <td>교육일수</td>
    </tr>
  </tbody>
</table>
</body>
</html>
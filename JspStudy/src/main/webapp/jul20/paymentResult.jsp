<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>paymentResult.jsp</title>
</head>
<body>
<%
String total = request.getParameter("SUM");
out.print("총 구매액은 <font color='blue'>"+total+"</font>원입니다.<br/>");
out.print("이용해주셔서 감사합니다.<br/>");
%>
</body>
</html>
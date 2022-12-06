<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.* , java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	header, section, footer {text-align: center; } 
	nav {text-align: left; background-color:skyblue; color:white; padding:10px; }
	.main {align-content:center; padding: 10px;}
 	.right {text-align:right; padding: 0 5px;} 
 	th, td {text-align: center; padding:0px 20px;}
</style>
</head>
<body>
<header>
	<h3>(과정평가형 정보처리산업기사)물류창고 입출고 프로그램</h3>
</header>
<nav>
<%@ include file="menu_header.jsp" %>
</nav>
<section>
	<div align="center">
	<h3>입출고내역조회</h3>
	<div class="main">
	<table border="1">
	<tr><th>입출고번호</th><th>제품코드</th><th>제품명</th>
		<th>입출고구분</th><th>수량</th><th>거래처</th><th>거래일자</th></tr>
<%
	ArrayList<Inout> list = (ArrayList) request.getAttribute("LIST");
	for(Inout io : list){
		String t_type_str = "";
		if(io.getT_type().equals("I")) t_type_str = "입고";
		else t_type_str = "출고";
%>	
	<tr><td><%=io.getT_no()%></td>
		<td><%=io.getP_code()%></td>
		<td><%=io.getP_name()%></td>
		<td><%=t_type_str%></td>
		<td class="right"><%=io.getT_cnt()%></td>
		<td><%=io.getC_name()%></td>
		<td><%=io.getT_date_fmt()%></td></tr>
<%
	}
%>
	</table>
	</div>
	</div>
</section>
<footer>
	<h4>HRDKOREA Copyrightⓒ2020 All right reserved. Human Resources Development Service of Korea</h4>
</footer>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>gababoProcess</title>
</head>
<body>
<%
	//파라미터(CHOICE)를 수신한다
	String c = request.getParameter("CHOICE");
	//형변환: 문자열 -> 숫자 Integer.parseInt(문자열);
	int gamer = Integer.parseInt(c);
	int com = (int)(Math.random()*3+1);
	//게이머가 승(1), 무승부(0), 컴퓨터 승(-1)
	int result = winner(gamer,com);
	//gababoResult.jsp로 결과를 전송
	//1.Redirect 2.Forward 3.both OK ->정답:1(결과 페이지에서 난수가 바뀌면 안되기 때문에)
	response.sendRedirect("template.jsp?BODY=303.gababoResult.jsp?R="+result+"&G="+gamer+"&C="+com);
%>
<%!
	int winner(int g, int c){
	//게이머가 승(1), 무승부(0), 컴퓨터 승(-1)
	int result = 0;
	if(g==c){//무승부인 경우
		result = 0;
	}else if((g==1 && c==3)||(g==2 && c==1)||(g==3 && c==2)){//게이머가 이긴 경우
		result = 1;
	}else{//컴퓨터가 이긴 경우
		result = -1; 
	}
	return result;
}
%>
</body>
</html>
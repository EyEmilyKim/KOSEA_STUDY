<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>gababoHome</title>
</head>
<body>
<div align="center">
<h2>가위,바위,보에 오신 것을 환영합니다.</h2>
<p>가위,바위,보 중에 하나를 선택하고 버튼을 누르세요.</p>
<form action="302.gababoProcess.jsp" onSubmit="return check(this)">
가위<input type="radio" name="CHOICE" value="1"/>,  
바위<input type="radio" name="CHOICE" value="2"/>,  
보<input type="radio" name="CHOICE" value="3"/><br/><br/>
<input type="submit" value="결과보기"/>
<input type="reset" value="취소"/>
</form>
</div>
<script type="text/javascript">
function check(frm){
	if(! frm.CHOICE[0].checked && ! frm.CHOICE[1].checked && ! frm.CHOICE[2].checked ){
		alert("가위,바위,보 중 하나를 선택하세요");
		return false;
	}if(confirm("선택한 내용이 맞습니까?")){ return true;
	}else{ return false; }
}
</script>
</body>
</html>
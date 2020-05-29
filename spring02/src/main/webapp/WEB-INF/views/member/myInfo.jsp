<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- views/member/write.jsp -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>회원가입</title>
<%@ include file="../include/header.jsp" %>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
$(function(){
	$("#btnUpdate").click(function(){
		if(confirm("수정하시겠습니까?"){
			document.form1.action="${path}/member/update.do";
		    document.form1.submit();
		}
	});
	$("#btnDelete").click(function(){
		if(confirm("삭제하시겠습니까?")){
			document.form1.action="${path}/member/delete.do";
			document.form1.submit();
		}
	});
});
</script>
</head>
<body>
<%@ include file="../include/menu.jsp" %>
<div class="container">
<h2>회원등록</h2>
<c:forEach var="row" items="${model.list}">
<div class="form-group">
아이디
    <input class="form-control" value="${row.userid}"
    name="userid" id="userid" type="text" readonly="readonly" />
</div>

<div class="form-group">
비밀번호
    <input class="form-control" value="${row.passwd}" placeholder="비밀번호" 
    name="passwd" id="passwd" type="password"  />
</div>

<div class="form-group">
이름
    <input class="form-control" placeholder="이름" value="${row.name}"
    name="name" id="name" type="text" readonly="readonly"/>
</div>

<div class="form-group">
이메일
    <input class="form-control" placeholder="이메일" value="${row.email}"
    name="email" id="email" type="text"  />
</div>

	
<div class="form-group">
주소<br>
    <input class="form-control" style="width: 40%; display: inline;" 
    placeholder="우편번호" name="addr1" id="addr1" type="text" 
    readonly="readonly" value="${row.addr1}">
    <button type="button" class="btn btn-default" 
    onclick="execPostCode();">
    <i class="fa fa-search"></i> 우편번호 찾기</button>                               
</div>
<div class="form-group">
    <input class="form-control" style="top: 5px;" 
    placeholder="도로명 주소" name="addr2" id="addr2" type="text" 
    readonly="readonly" value="${row.addr2}" />
</div>
<div class="form-group">
    <input class="form-control" placeholder="상세주소" 
    name="addr3" id="addr3" type="text" value="${row.addr3}" />
</div>
</c:forEach>
</div>

<!-- <input type="submit" class="btn btn-lg btn-success btn-block" value="확인"> -->
<input type="button" id="btnUpdate" class="btn btn-lg btn-success btn-block" onclick=check() value="수정">
<input type="button" id="btnDelete" class="btn btn-lg btn-success btn-block" onclick=check() value="삭제">

</body>
</html>
           
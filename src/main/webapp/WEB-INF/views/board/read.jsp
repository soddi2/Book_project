<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="../includes/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>board</title>
<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script>
	$(document).on('click', '#btnList', function(){
		location.href = "${pageContext.request.contextPath}/board/getBoardList";
	});
</script>
<style>
body {
	/* padding-top: 70px; */
	padding-bottom: 30px;
}
h2 {
margin: 30;

}
.board_title {
	font-weight : 700;
	font-size : 22pt;
	margin : 10pt;
}
.board_info_box {
	color : #6B6B6B;
	margin : 10pt;
}
.board_author {
	font-size : 10pt;
	margin-right : 10pt;
}
.board_date {
	font-size : 10pt;
}
.board_content {
	color : #444343;
	font-size : 12pt;
	margin : 10pt;
}
.board_tag {
	font-size : 11pt;
	margin : 10pt;
	padding-bottom : 10pt;
}
</style>
</head>
<body>
	<article>
		<form action="" role="form">
			<div class="container" role="main">
				<h2>board Content</h2>
				<div class="bg-white rounded shadow-sm">
					<div class="board_title"><c:out value="${boardContent.title}"/></div>
					<div class="board_info_box">
						<span class="board_author"><c:out value="${boardContent.reg_id}"/>,</span><span class="board_date"><c:out value="${boardContent.reg_dt}"/></span>
					</div>
					<div class="board_content">${boardContent.content}</div>
					<div class="board_tag">TAG : <c:out value="${boardContent.tag}"/></div>
				</div>
				<div style="margin-top : 20px">
					<button type="submit" class="btn btn-sm btn-primary" id="btnUpdate">수정</button>
					<button type="submit" class="btn btn-sm btn-primary" id="btnList">목록</button>
				</div>	
			</div>
		</form>
	</article>
</body>
</html>

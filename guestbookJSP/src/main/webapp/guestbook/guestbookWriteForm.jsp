<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>방명록</title>
<style type="text/css">
div {
	color: red;
	font-size: 8pt;
	font-weight: bold;
}

table {
	border-collapse: collapse;
}
</style>
</head>
<body>
<h2>글쓰기</h2>
<form name="guestbookWriteForm" method="post" action="guestbookWrite.jsp">
	<table border="1">
		<tr>
			<td width="100" align="center">작성자</td>
			<td>
				<input type="text" name="name" id="name" size="15">
			</td>
		</tr>
		
		<tr>
			<td width="100" align="center">이메일</td>
			<td>
				<input type="email" name="email" id="email">
			</td>
		</tr>
		
		<tr>
			<td width="100" align="center">홈페이지</td>
			<td>
				<input type="text" name="homepage" id="homepage" value="http://" size="35">
			</td>
		</tr>
		
		<tr>
			<td width="100" align="center">제목</td>
			<td>
				<input type="text" name="subject" id="subject" size="50">
				<div id= "subjectDiv"></div>
			</td>
		</tr>
		
		<tr>
			<td width="100" align="center">내용</td>
			<td>
				<textarea name="content" id="content" cols="50" rows="15"></textarea>
				<div id= "contentDiv"></div>
			</td>
		</tr>
		
		<tr>
			<td colspan="2" align="center">
				<input type="button" value="글작성" onclick="checkGuestbookWrite()">
				<input type="reset" value="다시작성">
				<input type="button" value="글목록" 
				onclick="location.href='guestbookList.jsp?pg=1'">
			</td>
		</tr>
	</table>
</form>

<script type="text/javascript" src="../js/guestbook.js"></script>
</body>
</html>
















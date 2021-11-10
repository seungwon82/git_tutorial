<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="guestbook.dao.GuestbookDAO" %>
<%@ page import="guestbook.bean.GuestbookDTO" %>
<%@ page import="java.util.List" %>

<%
//데이터
int pg = Integer.parseInt(request.getParameter("pg"));

//DB
//페이징 처리 - 1페이지당 3개씩
int endNum = pg*3;
int startNum = endNum-2;

GuestbookDAO guestbookDAO = GuestbookDAO.getInstance();
List<GuestbookDTO> list = guestbookDAO.getGuestbookList(startNum, endNum);

int totalA = guestbookDAO.getTotalA(); //총글수 
int totalP = (totalA+2)/3;//페이지 번호
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#currentPagingA{
	color: red;
	text-decoration: underline;
}

#pagingA {
	color: black;
	text-decoration: none;
}
</style>
</head>
<body>
<%if(list != null){ %>
	<%for(GuestbookDTO guestbookDTO : list) { %>
		<table border="1">
			<tr>
				<td width="100" align="center">작성자</td>
				<td width="100" align="center"><%=guestbookDTO.getName() %></td>
	            <td width="100" align="center">작성일</td>
	            <td width="100" align="center"><%=guestbookDTO.getLogtime() %></td>
			</tr>
			
			<tr>
				<td>이메일</td>
				<td colspan="3" align="center"><%=guestbookDTO.getEmail() %></td>
			</tr>
			
			<tr>
				<td>홈페이지</td>
				<td colspan="3" align="center"><%=guestbookDTO.getHomepage() %></td>
			</tr>
			
			<tr>
				<td>제목</td>
				<td colspan="3" align="center"><%=guestbookDTO.getSubject() %></td>
			</tr>
			
			<tr>
				<td colspan="4"><pre><%=guestbookDTO.getContent() %></pre></td>
			</tr>
		</table>
		<hr width="450" align="left" color="red">
	<%}//for %>
	
	<div style="width: 450px; text-align: center;">
	<%for(int i=1; i<=totalP; i++){ %>
		<%if(i==pg) { %>
			[<a href="guestbookList.jsp?pg=<%=i %>" id="currentPagingA"><%= i %></a>]
		<%}else{ %>
			[<a href="guestbookList.jsp?pg=<%=i %>" id="pagingA"><%= i %></a>]
		<%} %>
	<%}//for %>
	</div>
<%}//if %>
</body>
</html>




























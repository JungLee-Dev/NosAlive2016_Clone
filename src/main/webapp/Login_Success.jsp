<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session = "true" %>
<%
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	String nickname = request.getParameter("nickname");
			
	// If a session exists, return this session. If no no session exists, create a session
	HttpSession httpSession = request.getSession();
	//if(httpSession.isNew()){
		// Setting for the newly created session only
		httpSession.setAttribute("MEMBERID", id);
		httpSession.setAttribute("PASSWORD", password);
		httpSession.setAttribute("NICKNANE", nickname);
	//}	
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login Successful</title>
</head>
<body>
	ID :"<%= id %>"<br>
	Password : "<%= password %>"<br>
	Login successful
	
	<input type = "button" value = "My Page" onclick = "location.href = 'MyPage.jsp'"/>
	<input type = "button" value = "Member Info" onclick = "location.href = 'GetMemberInfo.do'"/>
	<input type = "button" value = "Member List" onclick = "location.href = 'GetMemberList.do'"/>
	<input type = "button" value = "Buy Ticket" onclick = "location.href = 'BuyTicket.jsp'"/>
	<input type = "button" value = "Logout" onclick = "location.href = 'Logout.jsp'" />	
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "models.*" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Member Information</title>
</head>
<body>
	<%
	MemberDTO memberInfo = new MemberDTO();
	memberInfo = (MemberDTO)request.getAttribute("Member");	
	String password = memberInfo.getPassword();
	%>
	
	<form name = "updateForm" action = "UpdateMemberInfo.do" method = "post">
	<table border = "1">

	<tr>
		<td>ID</td><td><input name = "id" value = "<%= memberInfo.getId() %>"></td>
	</tr>
	<tr>
		<td>Password</td><td><input type = "password" name = "password" value = "<%= memberInfo.getPassword() %>"></td>
	</tr>
	<tr>
		<td>Password Hint</td><td><input type = "text" name = "hint" value = "<%= memberInfo.getHint() %>"></td>
	</tr>
	<tr>
		<td>Name</td><td><%= memberInfo.getName() %></td>
	</tr>
	<tr>
		<td>Sex</td><td><%= memberInfo.getGender() %></td>
	</tr>
	<tr>
		<td>Nickname</td><td><input type = "text" name = "nickname" value = "<%= memberInfo.getNickname() %>"></td>
	</tr>
	<tr>
	<%
		String phone = memberInfo.getPhone1() + "-" + memberInfo.getPhone2() + "-" + memberInfo.getPhone3();
	%>
		<td>Phone</td><td><select name = "phone1" value = "<%= memberInfo.getPhone1() %>">
				<option value = "010">010</option>
				<option value = "011">011</option>
				<option value = "017">017</option>
			</select> - <input type = "text" name = "phone2" value = "<%= memberInfo.getPhone2() %>" size = 10>
			- <input type = "text" name = "phone3" value = "<%= memberInfo.getPhone3() %>" size = 10>
			</td>
	</tr>
	<tr>
		<td>Hobby</td><td><%= memberInfo.getHobby() %></td>
	</tr>
	<tr>
		<td>Class</td><td><%= memberInfo.getGrade() %></td>
	</tr>
	<tr>
		<td>Date of Birth</td><td><%= memberInfo.getBirth() %></td>
	</tr>
	<tr>
		<td>Introduction</td><td><textarea name = "intro" rows = "10" cols = "60"><%= memberInfo.getIntro() %></textarea></td>
	</tr>

	</table>
	<input type = "submit" value = "editMemberInfo">
	<input type = "button" name = "cancel" value = "cancel" onclick = "location.href = 'Login_Success.jsp'">
	<input type = "button" value = "cancelMembership" onclick = "location.href = 'Unregist.do'"/>
	</form>
</body>
</html>

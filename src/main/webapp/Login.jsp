<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>
</head>
<body>
	<!-- Login Form -->
	<form action = "Login.do" method = "post">

			<label for = "id">ID</label><input type = "text" name = "id"><br>
			<label for = "pw">Password</label><input type = "text" name = "password"><br>
			
			<input type = "submit" value = "login">
		
		<!-- Move to sign up page -->
		<input type = "button" value = "signup" onclick = "location.href = 'MemberRegist.jsp'"/>

	</form>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="./css/reset.css" media="all" />
<style>
#wrap {position:relative;width:500px;left:300px;top:0px;}
div>title {width:200px;background:#f00}
</style>
<title>Sign Up Page</title>
</head>
<body>
	<div id = "wrap">
	<b><font size = "7" color = "gray">Sign Up</font></b>
	<form action = "Regist.do" method = "post">
		ID : <input type = "text" name = "id"><br>
		Password : <input type = "password" name = "password"><br>
		Password Hint : <input type = "text" name = "hint"><br>
		Nickname : <input type = "text" name = "nickname"><br>
		Name : <input type = "text" name = "name"><br>
		Sex : Male <input type = "radio" name = "gender" value = "M">
			Female <input type = "radio" name = "gender" value = "F"><br>
		Hobby : Hiking <input type = "checkbox" name = "hobby" value = "mount">
			  Movie <input type = "checkbox" name = "hobby" value = "movie">
			  Travel <input type = "checkbox" name = "hobby" value = "travel">
			  Reading <input type = "checkbox" name = "hobby" value = "read"><br>
		Date of Birth : <input type = "date" name = "birth"><br>
		Phone : <select name = "phone1">
					<option value = "010">010</option>
					<option value = "011">011</option>
					<option value = "017">017</option>
				</select> - <input type = "text" name = "phone2" size = 10>
				- <input type = "text" name = "phone3" size = 10><br>
				<textarea name = "intro" rows = "10" cols = "60">Introduction</textarea><br><br>
			<br/>	
				<input type = "submit" value = "Submit"/><input type = "reset" value = "Reset"/>		
	</form>
	</div>
</body>
</html>

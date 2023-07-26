<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method = "get" action ="memberServlet">
		아&nbsp이&nbsp디&nbsp :
		<input type="text" name="id"><br><br>
		
		비밀번호 :
		<input type="password" name="pwd"><br><br>	
		
		이&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp름 :
		<input type="text" name="name"><br><br>
		
		
		이메일 :
		<input type="text" name="mail" > @ 
		<input type="text" name="mail_domain">직접
		<select class="select" name ="setmail">
		    <option value="">-선택-</option>
		    <option value="naver.com">naver.com</option>
		    <option value="gmail.com">gmail.com</option>
		    <option value="hanmail.net">hanmail.net</option>
		    <option value="hotmail.com">hotmail.com</option>
		    <option value="korea.com">korea.com</option>
		    <option value="nate.com">nate.com</option>
		    <option value="yahoo.com">yahoo.com</option>
		</select><br><br>
			
		연락처 : 
		<select class="select" name = "phone">
		    <option value="">-선택-</option>
		    <option value="010">010</option>
		    <option value="011">011</option>
		    <option value="016">016</option>
		</select>
		<input type="text" name="phone">
		<input type="text" name="phone"><br><br>
		
		<input type="submit" value="가입">
		<input type="submit" value="취소">
</form>
</body>
</html>
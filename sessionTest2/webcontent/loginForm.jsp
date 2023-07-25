<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method = "get" action ="St">
		
		아&nbsp이&nbsp디&nbsp :
		<input type="text" name="id"><br><br>
		
		비밀번호 :
		<input type="password" name="pwd"><br><br>	
		
		이&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp름 :
		<input type="text" name="name"><br><br>
			
		연락처 : 
		<select class="select" name = "phone">
		    <option value="">-선택-</option>
		    <option value="010">010</option>
		    <option value="011">011</option>
		    <option value="016">016</option>
		</select>
		<input type="text" name="phone">
		<input type="text" name="phone"><br><br>
			
		성별<br>
		<input type ="radio" name = "gender" value = "남"> 남자
		<input type ="radio" name = "gender" value = "여"> 여자 <br><br>
		
		취미 : <br>
		<input type="checkbox" name = "hobby" value = "잠자기">잠자기
		<input type="checkbox" name = "hobby" value = "밥먹기">밥먹기
		<input type="checkbox" name = "hobby" value = "술">술
		<input type="checkbox" name = "hobby" value = "놀기">놀기<br>
			
		<input type="submit" value="가입하기">
		
	
</body>
</html>
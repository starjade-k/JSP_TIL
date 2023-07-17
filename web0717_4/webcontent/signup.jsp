<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method = "get" action ="signupServlet">
	이&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp름 :
	<input type="text" name="name"><br><br>
	
	주민번호 :
	<input type="password" name="ssn"><br><br>
	
	아&nbsp이&nbsp디&nbsp : 
	<input type="text" name="id"><br><br>
	
	비밀번호 : 
	<input type="password" name="pwd"><br><br>
	
	비밀번호 확인 : 
	<input type="password" name="pwdch"><br><br>
	
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
	
	우편번호 : 
	<input type="text" name="post"><br><br>
	
	주소 : 
	<select class="select" name = "add">
	    <option value="">-선택-</option>
	    <option value="경기">경기</option>
	    <option value="서울">서울</option>
	    <option value="대전">대전</option>
	    <option value="부산">부산</option>
	    <option value="대구">대구</option>
	</select>
	<input type="text" name="add">구/동
	<input type="text" name="add">자세히 
	<input type="text" name="add"><br><br>
	
	핸드폰 번호 : 
	<input type="text" name="phone"><br><br>
	
	직업 : 
	<select class="select" name="job">
	    <option value="">-선택-</option>
	    <option value="학생">학생</option>
	    <option value="무직">무직</option>
	    <option value="사원">사원</option>
	    <option value="주부">주부</option>
	    <option value="교사">교사</option>
	</select><br><br>
	
	메일/SMS 수신여부<br>
	<input type ="radio" name = "reception"> 예 
	<input type ="radio" name = "reception"> 아니오<br><br>
	
	관심 분야 : <br>
	<input type="checkbox" name = "item" value = "야구">야구
	<input type="checkbox" name = "item" value = "농구">농구
	<input type="checkbox" name = "item" value = "축구">축구
	<input type="checkbox" name = "item" value = "배구">배구<br>
	<input type="checkbox" name = "item" value = "탁구">탁구
	<input type="checkbox" name = "item" value = "수영">수영
	<input type="checkbox" name = "item" value = "볼링">볼링
	<input type="checkbox" name = "item" value = "당구">당구<br>
	
	
	<input type="submit" value="가입">
	<input type="submit" value="취소">
</body>
</html>
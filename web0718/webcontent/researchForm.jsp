<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="research.jsp" method="post">
	<table border="0">
		<tr><!-- row 행 한칸 -->
		<!-- row 행 안의 칸 -->
		<td>이 름 :</td>
		<td><input type="text" name="name" size="20"></td>
		</tr>
		<tr><!-- row 행 한칸 -->
		<!-- row 행 안의 칸 -->
		<td>성 별 :</td>
		<td><input type="radio" name="gender" value="male" checked="checked">남 자
			<input type="radio" name="gender" value="female">여 자</td>
		</tr>
		<tr>
		<td>좋아하는 계절</td>
		<td><input type="checkbox" name="season" value="1">봄
			<input type="checkbox" name="season" value="2" checked="checked">여름
			<input type="checkbox" name="season" value="3">가을
			<input type="checkbox" name="season" value="4">겨울
		</td>
		</tr>
		<tr align="center">
		<td><input type = "submit" value="전송"></td>
		<td><input type = "submit" value="취소"></td>
		</tr>
	</table>
</form>
</body>
</html>
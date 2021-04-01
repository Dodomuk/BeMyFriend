<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<section class="com_board">
			<form action="${context}/member/company/mailauth" method="post" id="form_join">
				<fieldset id="join_field">
					<table id ="join_table">
						<tr><td>기업 아이디<span class="valid_info" id ="idCheck"></span></td></tr>
						<tr>
							<td><input type="text" name="id" id="id" placeholder ="아이디를 입력하세요" required>
								<button type="button" onclick="idCheck()">check</button>
							</td>
						</tr>
						
						<tr><td>비밀번호<span class="valid_info" id = "pw_confirm"></span></td></tr>
						<tr>
							<td><input type="password" name="pw" id="pw"  placeholder ="비밀번호를 입력하세요" required>
							
							</td>
						<tr>
						<tr><td>비밀번호 확인<span class="valid_info" id = "doubleCheckPw" ></span></td></tr>
						<tr>
							<td><input type="password" name="checkpw" id="checkpw" placeholder ="비밀번호를 확인하세요" required></td>
						<tr>
						<tr><td>기업명</td></tr>
						<tr>
							<td><input type="text" name="comname"  required></td>
						<tr>
						<tr><td>기업주소</td></tr>
						<tr>
							<td><input type="text" name="address"placeholder ="예시: 서울특별시 강남구 서초동"></td>
						<tr>
						<tr><td>기업전화번호</td></tr>
						<tr>
							<td><input type="tel" name="tell" required></td>
						<tr> 
						<tr><td>기업이메일</td></tr>
						<tr>
							<td><input type="email" name="email" placeholder ="사용중인 대표 이메일을 입력하세요" required></td>
						<tr>
						<tr><td>기업형태</td></tr>
						<tr>
							<td>스타트업<input type="radio" name="email"required></td>
							<td>중소기업<input type="radio" name="email"required></td>
							<td>중견기업<input type="radio" name="email"required></td>
							<td>대기업<input type="radio" name="email"required></td>
						<tr>
						<tr><td>기업인사담당자</td></tr>
						<tr>
							<td><input type="text" name="personmgr" required></td>
						<tr>
						
						<tr>
							<td id="join_btn_part"><button type="submit">회원가입</button> <button type="reset">취	소</button></td>
						</tr>
						
					</table>
				</fieldset>
			</form>
		</section>








</body>
</html>
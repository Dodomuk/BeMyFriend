<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<!-- Main -->
		<section class="user_board">
			<div class="user_login_form">
				<input type="text" name="id" id="id" placeholder="아이디를 입력하세요." required>
				<input type="password" name="pw" id="pw" placeholder="비밀번호를 입력하세요." required>
				<button onclick="login()" id="login_btn">로그인</button>
				<span id = "user_moreselect">
					<a href ="#" id="join_btn"> 회원가입하기</a>
					<a href ="#" id="find_info">아이디/비밀번호 찾기</a>
				</span>
			</div>
		</section>

</body>
</html>
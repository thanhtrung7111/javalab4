<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="bootstrap-5.3.2-dist/css/bootstrap.min.css">
</head>
<body>
	<div class="card mx-auto mt-5 p-5" style="width: 500px">
		<h5 class="text-info mb-3 fs-3">Đăng nhập</h5>
		<form action="/fpoly/lab3-login" method="post">
			<div class="mb-1">
				<label for="exampleFormControlInput1" class="form-label">Tên
					đăng nhập </label> <input type="text" name="username" class="form-control"
					id="exampleFormControlInput1" placeholder="Tên đăng nhập của bạn"
					value="${username}">
			</div>
			<div class="mb-3">
				<label for="exampleFormControlInput1" class="form-label">Mật
					khẩu </label> <input type="password" class="form-control" name="password"
					id="exampleFormControlInput1" placeholder="Mật khẩu của bạn"
					value="${password}">
			</div>
			<div class="mb-3">
				<input type="checkbox" name="remember" value="true"> <label
					for="exampleFormControlInput1" class="form-label">Ghi nhớ?</label>
			</div>
			<div class="mb-3">
				<button class="btn btn-info text-white">Đăng nhập</button>
			</div>
			<div class="text-info">${message}</div>
		</form>
	</div>
</body>
</html>
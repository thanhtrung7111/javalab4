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
	<div class="card mx-auto mt-5" style="width: 500px">
		<div class="card-header">Thông tin đăng kí</div>
		<ul class="list-group">
			<li class="list-group-item"><span
				class="fw-medium text-black-50">Tên đăng nhập: </span>${username}</li>
			<li class="list-group-item"><span
				class="fw-medium text-black-50">Mật khẩu: </span>${password}</li>
			<li class="list-group-item"><span
				class="fw-medium text-black-50">Giới tính: </span>${gender}</li>
			<li class="list-group-item"><span
				class="fw-medium text-black-50">Tình trạng hôn nhân: </span>${married}</li>
			<li class="list-group-item"><span
				class="fw-medium text-black-50">Quốc tịch: </span>${country}</li>
			<li class="list-group-item"><span
				class="fw-medium text-black-50">Sở thích: </span>${hobbies}</li>
			<li class="list-group-item"><span
				class="fw-medium text-black-50">Ghi chú: </span>${notes}</li>
		</ul>
	</div>
</body>
</html>
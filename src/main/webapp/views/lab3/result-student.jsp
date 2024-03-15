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
	<ul class="list-group">
		<li class="list-group-item"><span class="fw-medium text-black-50">Họ
				và tên: </span>${student.fullName}</li>
		<li class="list-group-item"><span class="fw-medium text-black-50">Hình
				ảnh: </span>${student.photo}</li>
		<li class="list-group-item"><span class="fw-medium text-black-50">Ngày
				sinh: </span>${student.id}</li>
	</ul>
</body>
</html>
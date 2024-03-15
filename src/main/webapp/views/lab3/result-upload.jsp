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
	<div class="card mx-auto mt-5" style="width: fit-content">
		<div class="card-header fw-medium text-black-50">Thông tin hình ảnh</div>
		<div class="card-body d-flex flex-column row-gap-2">
			<h2 class="fs-6 text-black-50">1. Hình: ${img.name}</h2>
			<img alt="" src="/fpoly/files/${img.name}"
				style="width: 250px; height: 350px; object-fit: center; object-position: center">
			<h2 class="fs-6 text-black-50">2. Tài liệu: ${doc.name}</h2>
			<a href="/fpoly/files/${doc.name}">Tải về</a>
		</div>
	</div>

</body>
</html>
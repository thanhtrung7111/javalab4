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
		<div class="card-header">Đăng tải ảnh và tài liệu</div>
		<form class="card-body" action="/fpoly/upload" method="post" enctype="multipart/form-data">
			<div class="mb-3">
				<label class="form-label">Chọn ảnh</label> <input
					type="file" class="form-control" name="photo_file"
					placeholder="name@example.com">
			</div>
			<div class="mb-3">
				<label class="form-label">Chọn tài liệu</label> <input
					type="file" class="form-control" name="doc_file"
					placeholder="name@example.com">
			</div>
			<div class="mb-3">
				<button class="btn btn-success">Upload</button>
			</div>
		</form>
	</div>
</body>
</html>
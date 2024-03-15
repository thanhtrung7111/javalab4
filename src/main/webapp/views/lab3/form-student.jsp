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
	<form class="card mx-auto mt-5" style="width: 500px" method="post"
		enctype="multipart/form-data">
		<h3>Student Infomation</h3>
		<div class="mb-3">
			<label for="exampleFormControlInput1" class="form-label">ID
				address</label> <input name="id" type="text" class="form-control"
				id="exampleFormControlInput1">
		</div>
		<div class="mb-3">
			<label for="exampleFormControlInput1" class="form-label">Fullname
				address</label> <input type="text" id="fullname" class="form-control"
				id="exampleFormControlInput1">
		</div>
		<div class="mb-3">
			<label class="form-label text-black-50 d-block">Major:</label> <select
				class="form-select" name="country">
				<option value="PTPM">PTPM</option>
				<option value="UDPM">UDPM</option>
			</select>
		</div>
		<div class="mb-3">
			<label class="form-label text-black-50 d-block">Sở thích:</label>
			<div>
				<div>
					<input type="checkbox" name="hobbies" value="Đọc sách"> <span
						class="text-black-50">Đọc sách</span>
				</div>
				<div>
					<input type="checkbox" name="hobbies" value="Du lịch"> <span
						class="text-black-50">Du lịch</span>
				</div>
				<div>
					<input type="checkbox" name="hobbies" value="Âm nhạc"> <span
						class="text-black-50">Âm nhạc</span>
				</div>
				<div>
					<input type="checkbox" name="hobbies" value="Khác"> <span
						class="text-black-50">Khác</span>
				</div>

			</div>
			<div class="mb-3">
				<label class="form-label text-black-50">Hình ảnh:</label> <input
					type="file" name="photo" class="form-control">
			</div>
			<button class="btn btn-danger">submit</button>
		</div>
	</form>
</body>
</html>
<%@ page language="java" contentType="text/html; UtF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hello</title>
<link rel="stylesheet" href="bootstrap-5.3.2-dist/css/bootstrap.min.css">
</head>
<body>
	<div class="card mx-auto mt-4" style="width: 500px">
		<div class="card-header fs-2 text-danger text-center d-block fw-medium">Đăng kí</div>
		<form action="/fpoly/staff" method="post" class="card-body" enctype="multipart/form-data">
			<div class="mb-3">
				<label class="form-label text-black-50">Họ và tên:</label> <input
					type="text" name="fullname" class="form-control"
					placeholder="Nhập tên của bạn">
			</div>
			<div class="mb-3">
				<label class="form-label text-black-50">Hình ảnh:</label> <input
					type="file" name="photo" class="form-control"
					>
			</div>
			<div class="mb-3">
				<label class="form-label text-black-50">Ngày sinh:</label> <input
					type="date" name="birthday" class="form-control"
					placeholder="Nhập mật khẩu">
			</div>
			<div class="mb-3 d-flex align-items-start column-gap-5">
				<div>
					<label class="form-label text-black-50">Giới tính:</label>
					<div>
						<input type="radio" name="gender" value="true" checked><span
							class="text-black-50 me-3">Nam</span> <input type="radio"
							name="gender" value="false"><span class="text-black-50">Nữ</span>

					</div>

				</div>
				<div>
					<label class="form-label text-black-50 d-block">Tình trạng
						hôn nhân:</label> <input type="checkbox" name="married" value="true"> <span
						class="text-black-50">Đã có gia đình?</span>
				</div>
			</div>


			<div class="mb-3">
				<label class="form-label text-black-50 d-block">Quốc tịch:</label> <select
					class="form-select" name="country">
					<option value="Việt Nam">Việt Nam</option>
					<option value="Lào">Lào</option>
					<option value="Campuchia">Campuchia</option>
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
			</div>
			<div class="mb-3">
				<label class="form-label text-black-50 d-block">Ghi chú:</label>
				<textarea rows="3" cols="30" name="notes"></textarea>
			</div>
			<div class="mb-3">
				<button class="btn btn-success">Đăng ký</button>
			</div>
		</form>
	</div>
</body>
</html>
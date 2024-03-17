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
	<div class="mx-auto mt-5 border p-3" style="width: 500px">
		<h5>Gửi email</h5>
		<form action="/fpoly/lab3-sendmail" method="post">
			<div class="mb-3">
				<label for="exampleFormControlInput1" class="form-label">Người
					gửi</label> <input type="text" class="form-control" name="sender"
					id="exampleFormControlInput1" placeholder="Nhập tên người gửi">
			</div>
			<div class="mb-3">
				<label for="exampleFormControlInput1" class="form-label">Người
					nhận</label> <input type="text" class="form-control" name="receiver"
					id="exampleFormControlInput1" placeholder="Nhập tên người nhận">
			</div>
			<div class="mb-3">
				<label for="exampleFormControlInput1" class="form-label">Tiêu
					đề</label> <input type="text" class="form-control" name="title"
					id="exampleFormControlInput1" placeholder="Nhập tiêu đề">
			</div>
			<div class="mb-3">
				<label for="exampleFormControlInput1" class="form-label">Nhập
					nội dung</label>
				<textarea type="text" class="form-control"
					id="exampleFormControlInput1" placeholder="Nhập nội dung"
					name="content"></textarea>
			</div>

			<div class="mb-2">
				<button class="btn btn-info text-white">Gửi mail</button>
			</div>
			<div class="mb-3">
				<p class="text-info">${message}</p>
			</div>
		</form>
	</div>
</body>
</html>
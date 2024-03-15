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
	<form action="/fpoly/maytinh" method="post"
		class="mx-auto mt-5 border rounded-2 card" style="width: 500px">
		<div class="card-header">Máy tính</div>
		<div class="p-3">
			<div class="mb-3">
				<label for="exampleFormControlInput1" class="form-label">Số
					thứ nhất</label> <input type="text" class="form-control" name="numberOne"
					id="exampleFormControlInput1" placeholder="Nhập số thứ nhất">
			</div>
			<div class="mb-3">
				<label for="exampleFormControlInput1" class="form-label">Số
					thứ hai</label> <input type="text" class="form-control" name="numberTwo"
					id="exampleFormControlInput1" placeholder="Nhập số thứ hai">
			</div>
			<div class="mb-3">
				<input type="submit" class="btn btn-danger" name="action" value="+">
				<input type="submit" class="btn btn-danger" name="action" value="-">
				<input type="submit" class="btn btn-danger" name="action" value="*">
				<input type="submit" class="btn btn-danger" name="action" value="/">
			</div>
			<h3 class="text-danger fs-6">${message}</h3>
		</div>
	</form>
</body>
</html>
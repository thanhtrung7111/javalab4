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
	<form action="/fpoly/tam-giac" method="post" class="card p-3 mx-auto mt-4" style="width: 500px">
	<h3 class="fw-medium fs-3 text-center text-info">Tam giác</h3>
	<div class="mb-3">
  <label class="form-label text-black-50">Cạnh a</label>
  <input type="text" name="canhA" class="form-control" id="exampleFormControlInput1" placeholder="Nhập cạnh a">
</div>
<div class="mb-3">
  <label class="form-label text-black-50">Cạnh b</label>
  <input type="text" name="canhB" class="form-control" id="exampleFormControlInput1" placeholder="Nhập cạnh b">
</div>
<div class="mb-3">
  <label class="form-label text-black-50">Cạnh c</label>
  <input type="text" name="canhC" class="form-control" id="exampleFormControlInput1" placeholder="Nhập cạnh c">
</div>
<h5 class="fs-5 text-success">${message}</h5>
<div>
	<button formaction="/fpoly/chu-vi" class="btn btn-danger">Tính chu vi</button>
	<button formaction="/fpoly/dien-tich" class="btn btn-success">Tính diện tích</button>
</div>
	</form>
</body>
</html>
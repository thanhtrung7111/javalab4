<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta content="Type/html" charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="bootstrap-5.3.2-dist/css/bootstrap.min.css">
</head>
<body>
<div  class="mx-auto border p-3 mt-5 rounded-1" style="width: fit-content;">
		<h1 class="fw-medium fs-4 text-center mb-3">Thông tin hình chữ nhật</h1>
		<form action="/fpoly/infomationRectangle" id="form" class="mb-4" method="post" style="width: 500px">
			<div class="input-group input-group-md flex-nowrap mb-3">
		  		<span class="input-group-text" id="addon-wrapping">Chiều dài</span>
		 		<input type="text" class="form-control" name="chieuRong" placeholder="Nhập chiều dài" aria-label="Username" aria-describedby="addon-wrapping">
			</div>
			<div class="input-group input-group-md  flex-nowrap ,b-3">
		  		<span class="input-group-text" id="addon-wrapping">Chiều rộng</span>
		 		<input type="text" class="form-control" name="chieuDai" placeholder="Nhập chiều rộng" aria-label="Username" aria-describedby="addon-wrapping">
			</div>
			<button class="btn btn-danger mx-auto d-block mt-4" onclick="submitForm">Submit</button>
		</form>
			<%
			String error = request.getAttribute("error").toString();
			if(error == "true"){
			%>
				<h1 class="text-danger">Kiểu dữ liệu sai</h1>
		
			<%
				}else{ 
			%>
				<div class="border rounded-5 p-3 d-flex flex-column align-items-center justify-content-center">
					<h1 class="text-danger">Kết quả</h1>
					<p><span class="fw-medium">Chu vi: </span>${chuVi}</p>
					<p><span class="fw-medium">Diện tích: </span>${dienTich}</p>
				</div>
			<%
				}
			%>
</div>

<script type="text/javascript">
function submitForm(){
	console.log("hello")
	const form = document.getElementById("form");

	const chieuDia = doc
}
</script>
</body>
</html>
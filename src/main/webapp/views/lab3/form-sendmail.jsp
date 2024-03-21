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
		<form action="/fpoly/lab3-sendmail" class="needs-validation"
			method="post" novalidate>
			<div class="mb-3">
				<label for="exampleFormControlInput1" class="form-label">Người
					gửi</label> <input type="text" class="form-control" name="sender"
					id="exampleFormControlInput1" placeholder="Nhập tên người gửi"
					pattern="^[\w'\-,.][^0-9_!¡?÷?¿/\\+=@#$%ˆ&*(){}|~<>;:[\]]{2,}$"
					required>
				<div class="invalid-feedback" style="font-size: 10px">Người
					gửi không đúng định dạng!</div>
			</div>
			<div class="mb-3">
				<label for="exampleFormControlInput1" class="form-label">Người
					nhận</label> <input type="text" class="form-control" name="receiver"
					pattern="[a-z0-9._%+\-]+@[a-z0-9.\-]+\.[a-z]{2,}$"
					id="exampleFormControlInput1" placeholder="Nhập tên người nhận"
					required>
				<div class="invalid-feedback" style="font-size: 10px">Người
					nhận không đúng định dạng!</div>
			</div>
			<div class="mb-3">
				<label for="exampleFormControlInput1" class="form-label">Tiêu
					đề</label> <input type="text" class="form-control" name="title"
					pattern="^[\w'\-,.][^0-9_!¡?÷?¿/\\+=@#$%ˆ&*(){}|~<>;:[\]]{2,}$"
					placeholder="Nhập tiêu đề" required>
				<div class="invalid-feedback" style="font-size: 10px">Tiêu đề
					không đúng định dạng!</div>
			</div>
			<div class="mb-3">
				<label for="exampleFormControlInput1" class="form-label">Nhập
					nội dung</label>
				<textarea type="text" class="form-control"
					placeholder="Nhập nội dung" name="content" required></textarea>
				<div class="invalid-feedback" style="font-size: 10px">Nội dụng
					không để trống!</div>
			</div>

			<div class="mb-2">
				<button class="btn btn-info text-white">Gửi mail</button>
			</div>
			<div class="mb-3">
				<p class="text-info">${message}</p>
			</div>
		</form>
	</div>
	<script type="text/javascript">
	(() => {
		  'use strict'

		  // Fetch all the forms we want to apply custom Bootstrap validation styles to
		  const forms = document.querySelectorAll('.needs-validation')
			
		  // Loop over them and prevent submission
		  Array.from(forms).forEach(form => {
		    form.addEventListener('submit', event => {
		      if (!form.checkValidity()) {
		        event.preventDefault()
		        event.stopPropagation()
		      }

		      form.classList.add('was-validated')
		    }, false)
		  })
		})()
	</script>
</body>
</html>
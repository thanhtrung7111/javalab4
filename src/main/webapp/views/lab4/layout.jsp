<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="../../bootstrap-5.3.2-dist/css/bootstrap.min.css">
</head>
<body>
	<div class="container">

		<jsp:include page="./menu.jsp"></jsp:include>

		<div class="row">
			<div class="col-9">
				<div class="row g-3">
					<jsp:include page="./item.jsp">
						<jsp:param value="IPHONE 15" name="name" />
						<jsp:param value="../../image/iphone15.webp" name="img" />
					</jsp:include>
					<jsp:include page="./item.jsp">
						<jsp:param value="IPHONE 14" name="name" />
						<jsp:param value="../../image/iphone14.webp" name="img" />
					</jsp:include>
					<jsp:include page="./item.jsp">
						<jsp:param value="IPHONE 13" name="name" />
						<jsp:param value="../../image/iphone13.webp" name="img" />
					</jsp:include>
					<jsp:include page="./item.jsp">
						<jsp:param value="IPHONE 12" name="name" />
						<jsp:param value="../../image/iphone12.png" name="img" />
					</jsp:include>



				</div>
			</div>
			<div class="col-3">
				<jsp:include page="./login.jsp"></jsp:include>
				<jsp:include page="./category.jsp"></jsp:include>
	
			</div>
		</div>
		<div class="bg-dark-subtle py-3 d-block text-center mt-3">FPT
			Polytechnich @2024. All rights reserved.</div>
	</div>
</body>
</html>
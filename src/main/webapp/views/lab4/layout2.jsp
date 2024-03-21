<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="bootstrap-5.3.2-dist/css/bootstrap.min.css">
</head>
<body>
	<div class="container">

		<div class="d-flex justify-content-between py-3">
			<h3 class="text-danger">ONLINE SHOPPNG MALL</h3>
			<img alt="" src="image/icon.png"
				style="height: 50px; width: 50px">
		</div>

		<ul class="ps-4 bg-success list-unstyled d-flex column-gap-5 py-3">
			<li><a class="text-white text-decoration-none">HOME</a></li>
			<li><a class="text-white text-decoration-none">ABOUT US</a></li>
			<li><a class="text-white text-decoration-none">CONTACT US </a></li>
			<li><a class="text-white text-decoration-none">FEEDBACK</a></li>
			<li><a class="text-white text-decoration-none">FAQS</a></li>
		</ul>

		<div class="row">
			<div class="col-9">
				<div class="row g-3">
					<c:forEach items="${items}" var="item">
						<div class="col-12 col-md-6 col-lg-4">

							<div class="card mx-auto mt-5">
								<div class="card-header">${item.name}</div>
								<div class="card-body">
									<img alt="" src="image/${item.image}"
										style="width: 100%; height: 300px; object-fit: cover; object-position: center">
									<div class="mt-4">
										<p>
											Giá gốc: <span>${item.price}</span>
										</p>
										<p>
											Giá mới: <span><c:set var="newprice"
													value="${item.price*(1-item.discount)}" /> <fmt:formatNumber
													value="${newprice}" /></span>s
										</p>
										<p>
											Mức giá: <span> <c:choose>
													<c:when test="${newprice< 10}">Giá thấp</c:when>
													<c:when test="${newprice> 100}">Giá cao</c:when>
													<c:otherwise>Bình thường</c:otherwise>
												</c:choose>
											</span>
										</p>
									</div>
								</div>
								<div class="card-footer">12/02/2024</div>
							</div>
						</div>
					</c:forEach>
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
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
	<div class="card mx-auto mt-5" style="width: 500px">
		<div class="card-header">${item.name}</div>
		<div class="card-body">
			<img alt="" src="image/${item.image}" style="width: 100%; height: 300px;object-fit:cover;object-position:center">
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
</body>
</html>
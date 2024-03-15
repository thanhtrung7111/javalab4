<%@page import="java.lang.reflect.Array"%>
<%@page import="java.util.Arrays"%>
<%@page import="com.poly.lab3.Staff"%>
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
	<%
	Staff staff = (Staff) request.getAttribute("staff");
	%>
	<div class="card mx-auto mt-5" style="width: 500px">
		<div class="card-header">Thông tin đăng kí</div>
		<ul class="list-group">
			<li class="list-group-item"><span
				class="fw-medium text-black-50">Họ và tên: </span>${staff.fullname}</li>
			<li class="list-group-item"><span
				class="fw-medium text-black-50">Hình ảnh: </span>${staff.photo}</li>
			<li class="list-group-item"><span
				class="fw-medium text-black-50">Ngày sinh: </span>${staff.birthday}</li>
			<li class="list-group-item"><span
				class="fw-medium text-black-50">Giới tính: </span> <%
 if (staff.isGender() == true) {
 	out.print("Nam");
 } else {
 	out.print("Nữ");
 }
 %></li>
			<li class="list-group-item"><span
				class="fw-medium text-black-50">Tình trạng hôn nhân: </span>
				<%
				if (staff.isMarried() == true) {
					out.print("Đã kết hôn");
				} else {
					out.print("Chưa kết hôn");
				}
				%></li>
			<li class="list-group-item"><span
				class="fw-medium text-black-50">Quốc tịch: </span>${staff.country}</li>
			<li class="list-group-item"><span
				class="fw-medium text-black-50">Sở thích: </span>
				<%
				out.print(Arrays.toString(staff.getHobbies()));
				%></li>
			<li class="list-group-item"><span
				class="fw-medium text-black-50">Ghi chú: </span>${staff.notes}</li>
		</ul>
	</div>
</body>
</html>
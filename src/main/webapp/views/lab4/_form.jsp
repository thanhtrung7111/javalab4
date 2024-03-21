<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="card mx-auto mt-5 p-3" style="width: 500px">
	<h3>User Edition</h3>
	<form action="/fpoly/lab4-user" method="post">
		<div class="mb-3">
			<label class="form-label">Tên đăng nhập</label> <input type="text"
				class="form-control" placeholder="Nhập tên đăng nhập"
				value="${form.user}">
		</div>
		<div class="mb-3">
			<label class="form-label">Mật khẩu</label> <input type="password"
				class="form-control" value="${form.password}"
				placeholder="Nhập mật khẩu">
		</div>
		<div class="mb-1">
			<input type="checkbox" ${form.remember?"checked":""}> Ghi
			nhớ?
		</div>
		<button class="btn btn-success">Create</button>
	</form>
</div>

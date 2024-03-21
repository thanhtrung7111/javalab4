<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<div class="px-3">
<h3>User List</h3>
<table border="1" style="width: 100%;" class="table">
	<thead>
		<tr>
			<th>Username</th>
			<th>Password</th>
			<th>Remember?</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${items}" var="item">
			<tr>
				<td>${item.user}</td>
				<td>${item.password}</td>
				<td>${item.remember}</td>
			</tr>
		</c:forEach>

	</tbody>
</table>
</div>
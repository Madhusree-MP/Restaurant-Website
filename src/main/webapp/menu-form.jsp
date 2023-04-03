<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Restaurant Website</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>

	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: rgb(170, 210, 54)">
			<div>
				<a href="menu-list.jsp" class="navbar-brand"> Restaurant Website </a>
			</div>

			<ul class="navbar-nav">
				<li><a href="<%=request.getContextPath()%>/list"
					class="nav-link">Items</a></li>
			</ul>
		</nav>
	</header>
	<br>
	<div class="container col-md-5">
		<div class="card">
			<div class="card-body">
				<c:if test="${admin != null}">
					<form action="update" method="post">
				</c:if>
				<c:if test="${admin == null}">
					<form action="insert" method="post">
				</c:if>

				<caption>
					<h2>
						<c:if test="${admin != null}">
            			Edit Item
            		</c:if>
						<c:if test="${admin == null}">
            			Add New Item
            		</c:if>
					</h2>
				</caption>

				<c:if test="${admin != null}">
					<input type="hidden" name="id" value="<c:out value='${admin.id}' />" />
				</c:if>

				<fieldset class="form-group">
					<label>Item Name</label> <input type="text"
						value="<c:out value='${admin.name}' />" class="form-control"
						name="name" required="required">
				</fieldset>

				<fieldset class="form-group">
					<label>Item Price</label> <input type="text"
						value="<c:out value='${admin.price}' />" class="form-control"
						name="price">
				</fieldset>

				

				<button type="submit" class="btn btn-success">Save</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>

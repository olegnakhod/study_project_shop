<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Shop</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">

<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.2.0/css/all.css">
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="container-fluid ">
		<div class="col-7  offset-3 single-product mt-5">
			<div class="card text-white bg-dark mb-3">
				<div class="card-body">
					<h5 class="card-title">${article.name}</h5>
					<h6 class="card-subtitle mb-2 text-muted">${article.price}</h6>
					<p class="card-text">${article.description}</p>
					<button type="button" class="btn btn-primary" data-toggle="modal"
						data-target="#buyProductModal">buy product</button>
				</div>
			</div>
		</div>
	</div>

	<div class="modal fade" id="buyProductModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Confirmation</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					Are You sure that You want to buy this product?
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Cancel</button>
					<button type="button" data-article="${article.id}"  class="btn btn-primary buy-product">Buy</button>
				</div>
			</div>
		</div>
	</div>

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
	<script src="js/serverCalls.js"></script>
</body>
</html>
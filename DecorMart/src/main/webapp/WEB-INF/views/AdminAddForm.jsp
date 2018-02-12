<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Insert title here</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/FormPage.css">

<style>
body {
	font-family: Arial;
}

/* Style the tab */
.tab {
	overflow: hidden;
	border: 1px solid #ccc;
	background-color: #f1f1f1;
}

/* Style the buttons inside the tab */
.tab button {
	background-color: inherit;
	float: left;
	border: none;
	outline: none;
	cursor: pointer;
	padding: 14px 16px;
	transition: 0.3s;
	font-size: 17px;
}

/* Change background color of buttons on hover */
.tab button:hover {
	background-color: #ddd;
}

/* Create an active/current tablink class */
.tab button.active {
	background-color: #ccc;
}

/* Style the tab content */
.tabcontent {
	display: none;
	padding: 6px 12px;
	border: 1px solid #ccc;
	border-top: none;
}

/* Style the close button */
.topright {
	float: right;
	cursor: pointer;
	font-size: 20px;
}

.topright:hover {
	color: red;
}

table {
	font-family: arial, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

td, th {
	border: 1px solid #dddddd;
	text-align: left;
	padding: 8px;
}
</style>
<script>
	function openForm(evt, AddPage) {
		var i, tabcontent, tablinks;
		tabcontent = document.getElementsByClassName("tabcontent");
		for (i = 0; i < tabcontent.length; i++) {
			tabcontent[i].style.display = "none";
		}
		tablinks = document.getElementsByClassName("tablinks");
		for (i = 0; i < tablinks.length; i++) {
			tablinks[i].className = tablinks[i].className
					.replace(" active", "");
		}
		document.getElementById(AddPage).style.display = "block";
		evt.currentTarget.className += " active";
	}

	// Get the element with id="defaultOpen" and click on it
	document.getElementById("defaultOpen").click();
</script>
</head>
<body>
	<div class="container">
		<h2 align="center">Admin Add Page</h2>
		<div class="container">
			<div class="login-signup">
				<div class="row">
					<div class="col-sm-12 nav-tab-holder">
						<ul class="nav nav-tabs row" role="tablist">
							<li role="presentation" class="active col-sm-6"><a
								href="#product" aria-controls="product" role="tab"
								data-toggle="tab">Product</a></li>
							<li role="presentation" class="col-sm-6"><a href="#category"
								aria-controls="category" role="tab" data-toggle="tab">Category</a></li>
							<li role="presentation" class="col-sm-6"><a href="#supplier"
								aria-controls="supplier" role="tab" data-toggle="tab">Supplier</a></li>
						</ul>
					</div>

				</div>
			</div>


			<div class="tab-content">
				<div role="tabpanel" class="tab-pane active" id="product">
					<div class="row">

						<div class="col-sm-12 mobile-pull">
							<article role="login">
							<h3 class="text-center">
								<i class="fa fa-lock"></i>Product
							</h3>

							<c:url var="addProduct" value="/admin/saveproduct"></c:url>
							<form class="signup" action="${addProduct}" method="post">
								<div class="form-group">
									<input type="text" class="form-control" name="pname"
										placeholder="Product Name">
								</div>
								<div class="form-group">
									<input type="textarea" class="form-control" name="pdesc"
										placeholder="Product Decription">
								</div>
								<div class="form-group">
									<input type="text" class="form-control" name="price"
										placeholder="Product Price">
								</div>
								<div class="form-group">
									<input type="text" class="form-control" name="stock"
										placeholder="Product In Stock">
								</div>
								<div class="form-group">
									<!-- <input type="text" class="form-control" placeholder="Select Category"> -->
									Select Category <select class="form-control" name="pcategory">
										<option value="">-----CATEGORY------</option>
										<c:forEach items="${CategoryList}" var="pcategory">
											<option value="${pcategory.catId }">${pcategory.catName}</option>
										</c:forEach>
									</select>
								</div>

								<div class="form-group">
									<!-- <input type="text" class="form-control" placeholder="Select Category"> -->
									Select Supplier <select class="form-control" name="pcategory">
										<option value="">-----SUPPLIER------</option>
										<c:forEach items="${SupplierList}" var="psupplier">
											<option value="${psupplier.supId }">${psupplier.supName}</option>
										</c:forEach>
									</select>
								</div>

								<div class="form-group">
									Product Image: <input type="file" name="file" />
								</div>

								<div class="form-group">
									<input type="submit" class="btn btn-success btn-block"
										value="SUBMIT">
								</div>
							</form>
							</article>
						</div>
					</div>
				</div>


				<div role="tabpanel" class="tab-pane" id="category">
					<div class="row">

						<div class="col-sm-12 mobile-pull">
							<article role="login">
							<h3 class="text-center">
								<i class="fa fa-lock"></i>Category
							</h3>
							<c:url var="addCategory" value="/admin/savecategory"></c:url>
							<form class="signup" action="${addCategory }" method="post">
								<div class="form-group">
									<input type="text" class="form-control" name="catId"
										placeholder="Category Id">
								</div>
								<div class="form-group">
									<input type="text" class="form-control" name="catName"
										placeholder="Category Name">
								</div>

								<div class="form-group">
									<input type="submit" class="btn btn-success btn-block"
										value="SUBMIT">
								</div>
							</form>
							</article>
						</div>
					</div>
				</div>
				<div role="tabpanel" class="tab-pane" id="supplier">
					<div class="row">

						<div class="col-sm-12 mobile-pull">
							<article role="login">
							<h3 class="text-center">
								<i class="fa fa-lock"></i>Supplier
							</h3>
							<c:url var="addSupplier" value="/admin/savesupplier"></c:url>
							<form class="signup" action="${addSupplier}" method="post">
								<div class="form-group">
									<input type="text" class="form-control" name="supId"
										placeholder="Supplier Id">
								</div>
								<div class="form-group">
									<input type="text" class="form-control" name="supName"
										placeholder="Supplier Name">
								</div>

								<div class="form-group">
									<input type="submit" class="btn btn-success btn-block"
										value="SUBMIT">
								</div>
							</form>
							</article>
						</div>
					</div>
				</div>
			</div>





			<!-- <frameset>
<div class="container">
  <h2 align="center">Admin Add Page</h2>
  <div class="btn-group btn-group-justified">
    <div class="btn-group"> 
      <button type="button" class="btn btn-primary" onclick="openForm(event, 'Product')">Product</button>
    </div>
    <div class="btn-group">
      <button type="button" class="btn btn-primary" onclick="openForm(event, 'Category')">Category</button>
    </div>
    <div class="btn-group">
      <button type="button" class="btn btn-primary" onclick="openForm(event, 'Supplier')">Supplier</button>
    </div>
  </div>
 </div> 
 
 <div id="Product" class="tabcontent">
  <span onclick="this.parentElement.style.display='none'" class="topright">x</span>
 
</div> -->
</body>
</html>
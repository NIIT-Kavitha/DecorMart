<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<c:url var="addAction" value="/insertUser"></c:url>
		<form:form class="well form-horizontal" action="${addAction}"
			method="post" modelAttribute="user">
			<fieldset>
				<center>
					<div class="imgcontainer">
						<img src="images/signimg.jpg" alt="SignUp" class="img-circle">

						<legend>
							<center>
								<h2>
									<b>SIGN UP</b>
								</h2>
							</center>
						</legend>
						<br>

						<div class="form-group">
							<label class="col-md-4 control-label">UserName</label>
							<div class="col-md-4 inputGroupContainer">
								<div class="input-group">

									<form:input path="name" placeholder="Username"
										class="form-control" type="text" />
								</div>
							</div>
						</div>



						<div class="form-group">
							<label class="col-md-4 control-label">Password</label>
							<div class="col-md-4 inputGroupContainer">
								<div class="input-group">

									<form:input path="password" placeholder="Password"
										class="form-control" type="password" />
								</div>
							</div>
						</div>

						<div class="form-group">
							<label class="col-md-4 control-label">E-Mail</label>
							<div class="col-md-4 inputGroupContainer">
								<div class="input-group">

									<form:input path="email" placeholder="E-Mail Address"
										class="form-control" type="text" />
								</div>
							</div>
						</div>

						<div class="form-group">
							<label class="col-md-4 control-label">Phone No.</label>
							<div class="col-md-4 inputGroupContainer">
								<div class="input-group">

									<form:input path="phoneno" placeholder="mobile number"
										class="form-control" type="text" />
								</div>
							</div>
						</div>
						<div class="form-group">
							<label class="col-md-4 control-label">Address</label>
							<div class="col-md-4 inputGroupContainer">
								<div class="input-group">

									<form:input path="address" placeholder="Address"
										class="form-control" type="text" />
								</div>
							</div>
						</div>
						<div class="form-group">
							<label class="col-md-4 control-label">Country</label>
							<div class="col-md-4 inputGroupContainer">
								<div class="input-group">

									<form:input path="Country" placeholder="Country name"
										class="form-control" type="text" />
								</div>
							</div>
						</div>

						<div class="form-group">
							<label class="col-md-4 control-label"></label>
							<div class="col-md-4">
								<br>
								<button type="submit" class="btn btn-primary">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspSUBMIT
									&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</button>
							</div>
						</div>
					</div>
				</center>
			</fieldset>
		</form:form>
	</div>

	<!-- </center> -->
</body>
</html>
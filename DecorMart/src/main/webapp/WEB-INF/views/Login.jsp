<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page isELIgnored="false"%>
<%-- <%@ include file="header.jsp" %> --%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<c:if test="${registrationSuccess !=null}">
${registrationSuccess }
</c:if>
	<div class="jumbotron">
		<div class="container-wrapper">
			<div class="container">


				<div id="login-box">
					<div class="imgcontainer">
						<center>
							<img src="images/logimg.jpg" alt="Login" class="img-circle">
							<h2>Login</h2>
						</center>
						<c:if test="${not empty logout}">
							<div class="error" style="color: #ff0000;">${logout}</div>
						</c:if>
					<%-- 	<c:url var="filtering" value="logincheck" ></c:url>
            <form name='loginForm' action="<c:url value="${filtering}"></c:url>" method='POST'>  --%>

						<form name='loginForm' action="<c:url value='/log' />"
							method='POST'>

							<c:if test="${not empty error}">
								<div class="error" style="color: #ff0000;">${error}</div>
							</c:if>

							<div class="form-group">
								<label for="email">E-mail: </label> <input type="text"
									id="email" name="email" class="form-control" required />
							</div>
							<div class="form-group">
								<label for="password">Password:</label> <input type="password"
									id="password" name="password" class="form-control" required />
							</div>
							<input type="hidden" name="${_csrf.parameterName}"
								value="${_csrf.token}" />
							<center>
								<input type="submit" value="Login" class="btn btn-primary">
								<%String email=request.getParameter("email");
								System.out.println("user: "+email);%>
							</center>
							<br>
						</form>
					</div>
				</div>

			</div>
			<br><br><br><br><br><br><br><br>
			
		</div>
	</div>
	<%@ include file="footer.jsp"%>

</body>
</html>
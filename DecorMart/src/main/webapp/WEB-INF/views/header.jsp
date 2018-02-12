<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
<%@ page isELIgnored="false" %>
<html>
<head>
   <%        
    response.setHeader("Pragma", "No-cache");
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
    response.setDateHeader("Expires",0 );
    
%>
  
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1"> 
<link rel="stylesheet"href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>

<form action="logout" method="post" id="logoutForm">
            <input type="hidden"
                    name="${_csrf.parameterName}"
                    value="${_csrf.token}" />
</form>

<script>
    function formSubmit() {
                document.getElementById("logoutForm").submit();
    }
</script>




  <nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<ul class="nav navbar-nav ">
			
		<li><a href="<c:url value="/"/>">Home</a></li>
				
				<c:if test="${pageContext.request.userPrincipal.name!=null}" >
				
				<c:if test="${pageContext.request.userPrincipal.name  == 'admin@gmail.com'}">
                            <li><a href="<c:url value="/admin/adminadd"/>">Add Product</a></li>
                            </c:if>
				
          <c:if test="${pageContext.request.userPrincipal.name =='admin@gmail.com' || pageContext.request.userPrincipal.name !='admin@gmail.com'}">                                     
				<li><a href="<c:url value=""/>">View Product</a></li>
				</c:if>
				
				<c:if test="${pageContext.request.userPrincipal.name != 'admin@gmail.com'}">
				<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Categories <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">Stickers</a></li>
          <li><a href="#">Lamps</a></li>
          
        </ul>
      </li>
      <ul class="nav navbar-nav navbar-right">
			<li><a href="<c:url value=""/>">Cart</a></li>
			</c:if>
				<li><a>Welcome ${pageContext.request.userPrincipal.name }</a></li>
			
			 <li><a href="javascript:formSubmit()">Logout</a></li>

		</c:if >
		</ul>
		<ul class="nav navbar-nav navbar-right">
				<c:if test="${pageContext.request.userPrincipal.name==null}">
		<li><a href="<c:url value="/login"></c:url>"><span class="glyphicon glyphicon-user"></span>login</a></li>
		<li><a href="<c:url value="/signup"></c:url>"><span class="glyphicon glyphicon-log-in"></span>Register</a>
		</c:if>
		</ul>
				</ul>
				
				</div>
				</nav>  
				</body>
				</html>

<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>

<%        
    response.setHeader("Pragma", "No-cache");
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
    response.setDateHeader("Expires",0 );
    
%>

</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    
    <ul class="nav navbar-nav">
	<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navid"/>

		<span class="icon-bar"></span>
		<span class="icon-bar"></span>
		<span class="icon-bar"></span>
	</button>
</ul>

<form action="logout" method="post" id="logoutForm">
            <input type="hidden"
                    name="${_csrf.parameterName}"
                    value="${_csrf.token}" />
</form>

<script>
    function formSubmit() {
                document.getElementById("logoutForm").submit();
    }
</script>
<div class="collapse navbar-collapse" id="navid">
	<ul class="nav navbar-nav">
	<c:if test="${pageContext.request.userPrincipal.name==null}">
      <li class="active"><a href="<c:url value="/" ></c:url>"><span class="glyphicon glyphicon-home"></span>Home</a></li>
      </c:if>
      <c:if test="${pageContext.request.userPrincipal.name!=null}" >
      <c:if test="${pageContext.request.userPrincipal.name  != 'admin'}">
 <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Categories <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">Stickers</a></li>
          <li><a href="#">Lamps</a></li>
          
        </ul>
      </li>
      </c:if>
      <li><a>Welcome ${pageContext.request.userPrincipal.name }</a></li>
      <c:if test="${pageContext.request.userPrincipal.name  == 'admin'}">
      <li><a href="<c:url value="/adminview" ></c:url>">Admin Add Page</a></li>
	<li><a href="<c:url value="/adminadd" ></c:url>">Admin Add Form</a></li>
	</c:if>
			 <li><a href="javascript:formSubmit()">Logout</a></li>

		</c:if >
   </ul>
    
    
<ul class="nav navbar-nav navbar-right">
<c:if test="${pageContext.request.userPrincipal.name==null}">
      <li><a href="<c:url value="/signup" ></c:url>"><span class="glyphicon glyphicon-user"></span>Sign Up</a></li>
      <li><a href="<c:url value="/login" ></c:url>"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </c:if>
    </ul>
    
  </div>
</div>
</nav>
</body>
</html> --%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
form {
    border: 3px solid #f1f1f1;
}


input[type=text], input[type=password] {
    width: 50%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}

button {
    background-color: #4CAF50;
    color: white;
    padding: 10px 10px;
    margin: 15px 0;
    border: none;
    cursor: pointer;
    width: 25%;
}
.imgcontainer {
    text-align: center;
    margin: 20px 0 12px 0;
}

.container {
    padding: 16px;
}

</style>
</head>
<body>
<h2>Signup Form</h2>

<form>
<div class="imgcontainer">
    <img src="images/signimg.jpg" alt="SignUp" class="img-circle">
  <div class="container">
    <label><b>Email</b></label>
    <input type="text" placeholder="Enter Email" name="email" required><br>

    <label><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="psw" required><br>

    <label><b>Repeat Password</b></label>
    <input type="password" placeholder="Repeat Password" name="psw-repeat" required><br>
    
    <p>By creating an account you agree to our <a href="#">Terms & Privacy</a>.</p><br>
<button type="submit">Sign Up</button>
    
  </div>
</div>
</form>
</body>
</html>
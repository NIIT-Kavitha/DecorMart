<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Insert title here</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
body {font-family: Arial;}

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

.topright:hover {color: red;}

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
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }
    document.getElementById(AddPage).style.display = "block";
    evt.currentTarget.className += " active";
}

// Get the element with id="defaultOpen" and click on it
document.getElementById("defaultOpen").click();
</script>
</head>
<body>
<frameset>
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
 <table class="table table-striped">
			<thead>
				<tr>
					<th>ID</th>
					<th>ProductImage</th>
					<th>Name</th>
					<th>Description</th>
					<th>Price</th>
					<th>Unit in Stock</th>
				</tr>
			</thead>			
            </table>
</div>

<div id="Category" class="tabcontent">
  <span onclick="this.parentElement.style.display='none'" class="topright">x</span>
  <table class="table table-striped">
  <thead>
  <tr>
    <th>Category ID</th>
    <th>Category Name</th>
    </tr>
    </thead>
    	<%-- <c:forEach var="category" items="${categoryList}">
			    <tr>
				<td>${category.id}</td>
				<td>${category.name}</td>
				<td>
				  <spring:url value="/update/${category.catId}" var="update" />
				  <spring:url value="/delete/${category.catId}" var="delete" />
				  
				
				  <button class="btn btn-primary"
                          onclick="location.href='${update}'">Update</button>
				  <button class="btn btn-danger"
                          onclick="location.href='${delete}'">Delete</button>
                                </td>
     
    
    </tr>
    </c:forEach> --%>
    </table>
</div>

<div id="Supplier" class="tabcontent">
  <span onclick="this.parentElement.style.display='none'" class="topright">x</span>
   <table class="table table-striped">
   <thead>
  <tr>
    <th>Supplier ID</th>
    <th>Supplier Name</th>
     </tr>
    </thead>
    </table>
</div>


</frameset>

</head>
<body>

</body>
</html>

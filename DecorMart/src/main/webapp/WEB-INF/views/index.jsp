<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<title>Insert title here</title>
</head>
<body>
<center><img src="images/logo.png"></font></h1>
<p><font face="Palace Script MT" size="25" color="#7D3C98">A Store to decorate your Home as you need !</font></p>
  </center>
  <%@include file="header.jsp" %>
<div class="container">
  <h2>Carousel images</h2>  
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    
    <div class="carousel-inner">
      <div class="item active">
        <img src="images/caimg1.jpg" alt="image1" style="width:100%;">
      </div>

      <div class="item">
        <img src="images/caimg2.jpg" alt="image2" style="width:100%;">
      </div>
    
      <div class="item">
        <img src="images/caimg3.jpg" alt="image3" style="width:100%;">
      </div>
    </div>

    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
<div class="container">
  <div class="jumbotron">
    <h1>DecorMart</h1>      
    <p>A store for Decorating Items </p>
    <div class="container"> 
<h1>Glass Painting</h1>   
  <div class="row">
    <div class="col-sm-4">
      <div class="panel panel-primary">
        <div class="panel-heading">Creative art</div>
        <div class="panel-body"><img src="images/GlassPainting/glass7.jpg" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">Flower Pot</div>
      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-danger">
        <div class="panel-heading">Creative art</div>
        <div class="panel-body"><img src="images/GlassPainting/glass4.jpg" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">Flower</div>
      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-success">
        <div class="panel-heading">Creative art</div>
        <div class="panel-body"><img src="images/GlassPainting/glass3.jpg" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">Mask faces</div>
      </div>
    </div>
  </div>
</div><br>

<div class="container">
<h1>Lamps</h1>    
  <div class="row">
    <div class="col-sm-4">
      <div class="panel panel-primary">
        <div class="panel-heading">Designer Lamp</div>
        <div class="panel-body"><img src="images/Lamps/lamp10.jpg" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">Wall lamp</div>
      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-danger">
        <div class="panel-heading">Designer Lamp</div>
        <div class="panel-body"><img src="images/Lamps/lamp9.jpg" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">Flower Lamp</div>
      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-success">
        <div class="panel-heading">Designer Lamp</div>
        <div class="panel-body"><img src="images/Lamps/lamp20.jpg" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">Creative Lamp</div>
      </div>
    </div>
  </div>
</div><br>

<div class="container"> 
<h1>Wall Stickers</h1>   
  <div class="row">
    <div class="col-sm-4">
      <div class="panel panel-primary">
        <div class="panel-heading">Sticker World</div>
        <div class="panel-body"><img src="images/wallsticker/wall4.jpg" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">Family chart</div>
      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-primary">
        <div class="panel-heading">Sticker World</div>
        <div class="panel-body"><img src="images/wallsticker/wall10.jpg" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">Wild animal</div>
      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-primary">
        <div class="panel-heading">Sticker World</div>
        <div class="panel-body"><img src="images/wallsticker/wall2.jpg" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">Music</div>
      </div>
    </div>
  </div>
</div><br><br>
  </div>
</div>
<%@include file="footer.jsp" %>
</body>
</html>
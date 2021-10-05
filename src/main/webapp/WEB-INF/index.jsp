<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<!-- for Bootstrap CSS -->
	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
	<!-- YOUR own local CSS -->
	<link rel="stylesheet" href="/css/main.css"/>
	<!-- For any Bootstrap that uses JS or jQuery-->
	<script src="/webjars/jquery/jquery.min.js"></script>
	<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
	<title>Insert title here</title>
</head>
<body>
<h1>Send anOmikuji!!</h1>
<div id = wrapper>
<form action="/create" method="POST">
<p>Pick any number from 5 to 25 </p>
<input type= "text"  name="number">
<div class="col-3">
                <label for="text" class="form-label">Enter the name of any city: </label>
                <input type="text" class="form-control" id="city" name="city">
            </div>
  <div class="col-3">
                <label for="name" class="form-label">Enter the name of any real person: </label>
                <input type="text" class="form-control" id="name" name="name">
            </div>
<div class="col-3">
                <label for="hobby" class="form-label">Enter professional endeavor or hobby:</label>
                <input type="text" class="form-control" id="hobby" name="hobby">
            </div>
<div class="col-3">
                <label for="organism" class="form-label">Enter any type of living thing: </label>
                <input type="text" class="form-control" id="organism" name="organism">
            </div>
<div class="col-3">
                <label for="nice" class="form-label">Say something nice to someone: </label>
                <textarea class="form-control" id="Textarea1" rows="3"></textarea>
            </div>
            
            <p>Send and show a friend
<div>
                <input type="submit" value="Send" class="btn btn-primary">
            </div>        

</div>

</body>
</html>

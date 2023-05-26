<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Plush</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<nav class="navbar navbar-expand-lg bg-body-tertiary ">
  			<div class="container-fluid">
    			<a class="navbar-brand" href="/plush">ProjectPlush</a>
    			<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      				<span class="navbar-toggler-icon"></span>
    			</button>
   			 <div class="collapse navbar-collapse d-flex justify-content-between" id="navbarNav">
      			<ul class="navbar-nav">
        			<li class="nav-item">
          				<a class="nav-link active" aria-current="page" href="#">Home</a>
        			</li>
        			<li class="nav-item">
          				<a class="nav-link" href="#">Features</a>
        			</li>
        			<li class="nav-item">
          				<a class="nav-link" href="#">Pricing</a>
        			</li>
      			</ul>
      			<a class="nav-link" href="/inicia_sesion">Entrar</a>
    		</div>
  			</div>
		</nav>
		<body >
			<div class="col-12 bg-dark p-3">
				<div class="p-3 mb-2 text-white">
    				<h1>Bienvenido a proyecto peluche</h1>
    				<CheckIcon size={16} />
    				<h3>Hay muchisimas cosas por hacer por el mundo!</h3>
    			</div>
    			<div class="dropdown m-auto">
  					<a class="btn btn-secondary dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
  					  Dropdown link
  					</a>
 					 <ul class="dropdown-menu">
 					   <li><a class="dropdown-item" href="#">Action</a></li>
 					   <li><a class="dropdown-item" href="#">Another action</a></li>
 					   <li><a class="dropdown-item" href="#">Something else here</a></li>
 					 </ul>
				</div>
    		</div>
    		
    	</body>
	</div>
</body>
</html>
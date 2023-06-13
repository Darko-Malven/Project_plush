<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	<link rel="stylesheet" href="/css/style.css">
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Libre+Baskerville:ital,wght@0,400;0,700;1,400&family=Ubuntu:wght@700&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300&family=Roboto:wght@300&display=swap" rel="stylesheet">
</head>
<body>

	<nav class="navbar navbar-expand-lg bg-body-tertiary ">
  			<div class="container-fluid">
    			<a class="navbar-brand" href="/plush">
    			<img id="logo" src="/img/logoDakota.png" alt="Dakota Logo">
    			</a>
    			<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      				<span class="navbar-toggler-icon"></span>
    			</button>
   			 <div class="collapse navbar-collapse d-flex justify-content-end" id="navbarNav">
      			<ul class="navbar-nav">
        			<li class="nav-item">
          				<a class="nav-link active" aria-current="page" href="/plush">Inicio</a>
        			</li>
        			<li class="nav-item">
          				<a class="nav-link" href="#">Campañas</a>
        			</li>
        			<li class="nav-item">
          				<a class="nav-link" href="/nuestra-mision">Nuestra mision</a>
        			</li>
        			<li class="nav-item">
          				<a class="nav-link" href="/contactanos">Contactanos</a>
        			</li>
        			<li class="nav-item">
          				<a class="nav-link" href="/donaciones">Dona</a>
        			</li>
      			</ul>
      			<a class="nav-link" href="/inicia_sesion">Ingresar</a>
    		</div>
  			</div>
		</nav>
		
		<div class="container heigthPerfil">
			<div class="perfil">
				<div>
					<img id="avatar" src="/img/avatar.jpg" alt="avatar">
				</div>
				<div class="info">
					<h1>${user.name} ${user.lastName}</h1>
				</div>
			</div>
			<div class="perfilBtn">
				<ul class="d-flex">
					<li><p>Perfil<p></li>
				</ul>
			</div>
			<div class="g-col-6 p-4 inicio">
				<h1>Editar</h1>
				<form:form action="/update" method="post" modelAttribute="userEdit">
				
					<div>
						<form:label path="name">Nombre</form:label>
						<form:input path="name" class="form-control"/>
						<form:errors path="name" class="text-danger"/>
					</div>
					<div>
						<form:label path="lastName">Apellido</form:label>
						<form:input path="lastName" class="form-control"/>
						<form:errors path="lastName" class="text-danger"/>
					</div>
					<div>
						<form:label path="email">Email</form:label>
						<form:input path="email" class="form-control"/>
						<form:errors path="email" class="text-danger"/>
					</div>
					<div>
						<form:label class="mt-3" path="password">Contraseña</form:label>
						<form:password path="password" class="form-control"/>
						<form:errors path="password" class="text-danger"/>
					</div>
					<div>
						<form:label class="mt-3" path="confirm">Confirmar Contraseña</form:label>
						<form:password path="confirm" class="form-control"/>
						<form:errors path="confirm" class="text-danger"/>
					</div>
					
					<form:hidden path="id" value="${user.id}"/>
					<input type="hidden" name="_method" value="PUT"/>
					<input type="submit" class="btn btn-light mt-3" value="Guardar" />
				</form:form>
			</div>
		</div>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Perfil ONG</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	<link rel="stylesheet" href="/css/style.css">
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Libre+Baskerville:ital,wght@0,400;0,700;1,400&family=Ubuntu:wght@700&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300&family=Roboto:wght@300&display=swap" rel="stylesheet"></head>
	
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
				<h1>${userInSession.orgaName}-${userInSession.acronym}</h1>
				<p>Correo electrónico: ${userInSession.email}</p>
			</div>
			<div>
				<a class="btn btn-secondary" href="/editarPerfil">Editar perfil</a>
			</div>
		</div>
		<div class="perfilBtn">
			<a class="btn" href="/editarPerfil">Perfil</a>
			<a class="btn" href="/editarPerfil">Boton</a>
			<a class="btn" href="/editarPerfil">Boton</a>
			<a class="btn" href="/editarPerfil">Notificaciones</a>
			<a class="btn" href="/editarPerfil">Opciones</a>
		</div>
		
		
<!--  <div class="publications">
			<h2>Información adicional</h2>
			<ul>
				<li>País: España</li>
				<li>Fecha de nacimiento: 01/01/1990</li>
				<li>Género: Masculino</li>
				<li>Intereses: Deportes, tecnología, viajes</li>
			</ul>
			<h2>Publicaciones</h2>
			<div class="post">
				<h3>Título de la publicación</h3>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vitae lacus vel eros volutpat gravida. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>
			</div>
			<div class="post">
				<h3>Otra publicación</h3>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vitae lacus vel eros volutpat gravida. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>
			</div>
			
		</div>
		 -->
	</div>
	<footer id="footer" class="text-center text-lg-start text-white">
	    <section class="d-flex justify-content-between p-4 footer_sup">
	      <div class="me-5 text_footer_sup ">
	        <span>Redes sociales</span>
	        <div class="iconosRRSS d-flex justify-content-start">
	        	<img src="/img/f.svg" alt="facebook Logo">
	        	<img src="/img/Instagram_logo.svg" alt="instragram Logo">
	        	<img src="/img/twitter.svg" alt="twitter Logo">
	        	<img src="/img/linkedin.svg" alt="linkedin Logo">
	       	</div>
	      </div>
	    </section>
	    <section>
	      <div class="container text-center text-md-start mt-5">
	        <div class="row mt-3">
	          <div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">
	            <h6 class="text-uppercase fw-bold">OSFL DAKOTA</h6>
	            <hr
	                class="mb-4 mt-0 d-inline-block mx-auto"
	                style="width: 60px; background-color: #7c4dff; height: 2px"
	                />
	            <p>
	              Gracias por contar con nosotros en Dakota, la organización comprometida con un mundo mejor. Trabajamos incansablemente para apoyar fundaciones sociales, proteger el medio ambiente y promover los derechos de los animales. ¡Únete a nuestro movimiento de cambio y construyamos juntos un futuro más justo y sostenible!
	            </p>
	          </div>
	          <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">
	            <h6 class="text-uppercase fw-bold">Categorias</h6>
	            <hr
	                class="mb-4 mt-0 d-inline-block mx-auto"
	                style="width: 60px; background-color: #7c4dff; height: 2px"
	                />
	            <p>
	              <a href="#!" class="text-white">Sociales</a>
	            </p>
	            <p>
	              <a href="#!" class="text-white">Humanistas</a>
	            </p>
	            <p>
	              <a href="#!" class="text-white">Ecologistas</a>
	            </p>
	            <p>
	              <a href="#!" class="text-white">Solidarias</a>
	            </p>
	          </div>
	          <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">
	            <h6 class="text-uppercase fw-bold">Más info!</h6>
	            <hr
	                class="mb-4 mt-0 d-inline-block mx-auto"
	                style="width: 60px; background-color: #7c4dff; height: 2px"
	                />
	            <p>
	              <a href="#!" class="text-white">Tu cuenta</a>
	            </p>
	            <p>
	              <a href="/donaciones" class="text-white">Donaciones</a>
	            </p>
	            <p>
	              <a href="/nuestra-mision" class="text-white">Quienes somos</a>
	            </p>
	            <p>
	              <a href="/contactanos" class="text-white">Contactanos</a>
	            </p>
	          </div>
	          <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">
	            <h6 class="text-uppercase fw-bold">Contacto</h6>
	            <hr
	                class="mb-4 mt-0 d-inline-block mx-auto"
	                style="width: 60px; background-color: #7c4dff; height: 2px"
	                />
	            <p><i class="fas fa-home mr-3"></i>Santiago forch</p>
	            <p><i class="fas fa-envelope mr-3"></i> dakotaosfl@gmail.com</p>
	            <p><i class="fas fa-phone mr-3"></i> +56 9 133</p>
	            <p><i class="fas fa-print mr-3"></i> +56 9 132</p>
	          </div>
	
	        </div>
	
	      </div>
	    </section>
	    <div
	         class="text-center p-3"
	         style="background-color: rgba(0, 0, 0, 0.2)"
	         >
	      © 2023 Grupo 5 el mejor grupo:
	      <a class="text-white" href="https://mdbootstrap.com/"
	         >FORGE.COMCITO</a
	        >
	    </div>
  </footer>
</body>
</html>
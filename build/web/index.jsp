<%-- 
    Document   : index

    Author     : maiv
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>La Tuerca - Inicio </title>
    <link rel="stylesheet" href="css/styles.css">
    <link rel="stylesheet" href="css/header.css">
    <!-- Importar Google Fonts -->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!-- Importar Material Icons para los íconos -->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!-- Importar Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Importar Bootstrap JS Bundle con Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
     <!-- Importar Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <header class="header-container">
    <nav class="header-navbar">
        <!-- Logo y título -->
        <div class="header-logo">
            <a href="index.jsp">
                <img src="images/logo_blanco.png" alt="La Tuerca">
                <span class="header-logo-text">LA TUERCA</span>
            </a>
        </div>

        <!-- Menú de navegación -->
        <ul class="header-nav-links">
            <li><a href="formularioCliente.jsp">Regístrate</a></li>
            <li><a href="formularioMoto.jsp">Atención Motos</a></li>
            <li><a href="formularioAuto.jsp">Atención Autos</a></li>
        </ul>

        <!-- Formulario de inicio de sesión alineado a la derecha -->
        <form action="ControladorLogin" method="POST" class="login-form">
            <i class="material-icons icon-prefix">account_circle</i>
            <input type="text" name="usuario" placeholder="Usuario" required>
            <i class="material-icons icon-prefix">vpn_key</i>
            <input type="password" name="clave" placeholder="Contraseña" required>
            <button class="btn-light" type="submit" name="opcion" value="Ingresar">Ingresar</button>
        </form>
    </nav>
</header>
</head>

<body class="body">

<!-- Contenedor principal -->
<div class="container d-flex align-items-center justify-content-between">
    <!-- Columna izquierda: Contenido principal -->
    <div class="left-column">
        <h1 class="Title">La Tuerca</h1>
        <p>Revisa aquí el estado de su auto</p>
        <a href="estadoVehiculo.jsp" class="button">
            <span class="button_top">Estado de su vehículo</span>
        </a>
    </div>

    <!-- Columna derecha: Carrusel -->
    <div class="right-column">
        <div id="carouselExample" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-inner">
                <!-- Primera imagen -->
                <div class="carousel-item active">
                    <img src="images/taller1.jpeg" class="d-block w-100" alt="Imagen 1">
                </div>
                <!-- Segunda imagen -->
                <div class="carousel-item">
                    <img src="images/taller2.jpeg" class="d-block w-100" alt="Imagen 2">
                </div>
                <!-- Tercera imagen -->
                <div class="carousel-item">
                    <img src="images/camiones.jpeg" class="d-block w-100" alt="Imagen 3">
                </div>
            </div>
            <!-- Botones de navegación del carrusel -->
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Anterior</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExample" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Siguiente</span>
            </button>
        </div>
    </div>
</div>
    <%@ include file="footer.jsp" %>

</body>
</html>

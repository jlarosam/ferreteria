<%-- 
    Document   : menuPrincipal

    Author     : maiv
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>La Tuerca - Panel Administrativo</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <!-- Importar Google Fonts y Font Awesome -->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <!-- Importar hoja de estilos admin.css -->
    <link rel="stylesheet" href="css/admin.css">
</head>
<body>
    <!-- Menú lateral -->
    <div class="sidebar">
        <div class="logo">
            <a href="index.jsp">
            <img class="logo-img" src="images/logo_blanco.png" alt="La Tuerca">
             <span class="logo-text">LA TUERCA</span>
            </a>
        </div>
        <ul class="menu-list">
            <li><a href="menuPrincipal.jsp"><i class="fas fa-home"></i> Inicio</a></li>
            <li><a href="registroTaller.jsp"><i class="fas fa-tools"></i> Registro Taller</a></li>
            <li><a href="registroStatus.jsp"><i class="fas fa-edit"></i> Actualizar Taller</a></li>
            <li><a href="formularioCliente.jsp"><i class="fas fa-users"></i> Clientes</a></li>
            <li><a href="menuVehiculos.jsp"><i class="fas fa-car"></i> Vehículos</a></li>
            <li><a href="reportes.jsp"><i class="fas fa-chart-bar"></i> Reportes</a></li>
            <li>
                <form action="ControladorCerrarSesion" method="POST">
                    <button type="submit" class="logout-btn" name="opcion" value="Cerrar">
                        <div class="icon-container">
                            <svg class="icon" viewBox="0 0 512 512" fill="white">
                                <path d="M377.9 105.9L500.7 228.7c7.2 7.2 11.3 17.1 11.3 27.3s-4.1 20.1-11.3 27.3L377.9 406.1c-6.4 6.4-15 9.9-24 9.9c-18.7 0-33.9-15.2-33.9-33.9l0-62.1-128 0c-17.7 0-32-14.3-32-32l0-64c0-17.7 14.3-32 32-32l128 0 0-62.1c0-18.7 15.2-33.9 33.9-33.9c9 0 17.6 3.6 24 9.9zM160 96L96 96c-17.7 0-32 14.3-32 32l0 256c0 17.7 14.3 32 32 32l64 0c17.7 0 32 14.3 32 32s-14.3 32-32 32l-64 0c-53 0-96-43-96-96L0 128C0 75 43 32 96 32l64 0c17.7 0 32 14.3 32 32s-14.3 32-32 32z"/>
                            </svg>
                        </div>
                        <span class="text"> Salir </span>
                    </button>
                </form>
            </li>

        </ul>
    </div>
    <%
    // Inicializar las variables
    String rutEmpleado = "";
    String nombreCompleto = "";

    // Verificar si los atributos están disponibles en el request
    if (request.getAttribute("rutEmpleado") != null) {
        rutEmpleado = (String) request.getAttribute("rutEmpleado");
    }
    if (request.getAttribute("nombreCompleto") != null) {
        nombreCompleto = (String) request.getAttribute("nombreCompleto");
    }
%>
    <!-- Contenido principal -->
    <div class="main-content">
        <header>
            <h2>Panel Administrativo</h2>
            <p>Bienvenido, <%= nombreCompleto %> - RUT: <%= rutEmpleado %></p>
        </header>
        <div class="dashboard">
            <div class="card">
                <a href="registroTaller.jsp"><i class="fas fa-tools"></i> Registro Taller</a>
            </div>
            <div class="card">
                <a href="registroStatus.jsp"><i class="fas fa-edit"></i> Actualizar Taller</a>
            </div>
            <div class="card">
                <a href="formularioCliente.jsp"><i class="fas fa-users"></i> Clientes</a>
            </div>
            <div class="card">
                <a href="menuVehiculos.jsp"><i class="fas fa-car"></i> Vehículos</a>
            </div>
            <div class="card">
                <a href="reportes.jsp"><i class="fas fa-chart-bar"></i> Reportes</a>
            </div>
        </div>
    </div>
</body>
</html>

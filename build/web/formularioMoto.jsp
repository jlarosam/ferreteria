<%-- 
    Document   : formularioMoto
 
    Author     : maiv
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Formulario Moto</title>>
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
            </div>
        </nav>
        </header>
</head>
<body>
    <!-- Contenedor del formulario -->
    <div class="container-formulario">
        <h1>Formulario Moto</h1>
        
        <!-- Formulario para cerrar sesión -->
        <form action="ControladorCerrarSesion" method="POST">
            <% 
                String rut = (String) request.getAttribute("rut");
                String dv = (String) request.getAttribute("dv");
            %>
            <h2 class="red-text">El rut es: <%= rut %> - <%= dv %></h2>
            <input type="submit" class="button" value="Cerrar" name="opcion">
        </form>

        <!-- Formulario para CRUD Moto -->
        <form action="ControladorCrudMoto" method="POST">
            <!-- Campos de entrada -->
            <div class="input-field">
                <label for="rut">Rut</label>
                <input type="text" id="rut" name="rut" maxlength="8" readonly value="<%= rut %>">
            </div>

            <div class="input-field">
                <label for="dv">DV</label>
                <input type="text" id="dv" name="dv" maxlength="1" readonly value="<%= dv %>">
            </div>

            <div class="input-field">
                <label for="patente">Patente</label>
                <input type="text" id="patente" name="patente">
            </div>

            <div class="input-field">
                <label for="marca">Marca</label>
                <input type="text" id="marca" name="marca">
            </div>

            <div class="input-field">
                <label for="tipoMoto">Tipo de Moto</label>
                <input type="text" id="tipoMoto" name="tipoMoto">
            </div>

            <div class="input-field">
                <label for="foto">Foto</label>
                <input type="text" id="foto" name="foto">
            </div>

            <div class="input-field">
                <label for="anyo">Año</label>
                <input type="number" id="anyo" name="anyo">
            </div>

            <div class="input-field">
                <label for="kilometraje">Kilometraje</label>
                <input type="number" id="kilometraje" name="kilometraje">
            </div>

            <div class="input-field">
                <label for="tipoBencina">Tipo de Bencina</label>
                <input type="text" id="tipoBencina" name="tipoBencina">
            </div>

            <!-- Contenedor para los botones -->
                <div class="button-container">
                    <div class="button">
                        <div class="button_top">Guardar</div>
                    </div>
                    <div class="button">
                        <div class="button_top">Buscar</div>
                    </div>
                    <div class="button">
                        <div class="button_top">Modificar</div>
                    </div>
                    <div class="button">
                        <div class="button_top">Eliminar</div>
                    </div>
                    <div class="button">
                        <div class="button_top">Listar</div>
                    </div>
                </div>

                 <!-- Botón de retroceso -->
            <div class="back-button center">
                <a href="menuPrincipal.jsp" class="back-button">
                    <i class="material-icons">arrow_back</i>Atrás
                </a>
            </div>
        </form>
    </div>
    <%@ include file="footer.jsp" %>
</body>
</html>

<%-- 
    Document   : clientes
   
    Author     : maiv
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!--Import Google Icon Font-->
        <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <!--Import materialize.css-->
        <link type="text/css" rel="stylesheet" href="css/styles.css"
              media="screen,projection"/>
        <link rel="stylesheet" href="css/header.css">
        <!-- Importar Material Icons para los íconos -->
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <!-- Importar Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
        <!-- Importar Bootstrap JS Bundle con Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Importar Font Awesome -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
        <!--Let browser know website is optimized for mobile-->
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>Formulario Cliente</title>

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
            <ul class="right hide-on-med-and-down">
                <li class="input-field col s1">
                <form action="ControladorCerrarSesion" method="POST">
                <!-- Botón de cierre estilizado correctamente -->
                <input class="btn-light" type="submit" name="opcion" value="Cerrar">
                </form>
                </li>
            </ul>
            </div>
        </nav>
        </header>
    </head>
<body>           
    <div class="container-formulario center">
    <form action="ControladorCrudClientes" method="Post">
        <h1>Formulario Cliente</h1>
        <p class="red-text">*Rellene los campos</p>

        <label for="rut">Rut</label>
        <input id="rut" type="number" name="rut">

        <label for="dv">PLACA</label>
        <input id="dv" type="text" name="dv" maxlength="1">

        <label for="pnombre">Primer Nombre</label>
        <input id="pnombre" type="text" name="pNombre">

        <label for="snombre">Segundo Nombre</label>
        <input id="snombre" type="text" name="sNombre">

        <label for="appaterno">Apellido Paterno</label>
        <input id="appaterno" type="text" name="apPaterno">

        <label for="apmaterno">Apellido Materno</label>
        <input id="apmaterno" type="text" name="apMaterno">

        <label for="direccion">Direccion</label>
        <input id="direccion" type="text" name="direccion">

        <label for="telefono">Telefono</label>
        <input id="telefono" type="number" name="telefono">
                <!-- Comuna (Lista Desplegable) -->
                <div class="input-field">
                    <label for="comuna">Comuna</label>
                    <select id="comuna" name="comuna">
                        <option value="" disabled selected>Elija la comuna</option>
                        <option value="Calera de Tango">Calera de Tango</option>
                        <option value="San Bernardo">San Bernardo</option>
                        <option value="Santiago">Santiago</option>
                        <option value="Rancagua">Rancagua</option>
                        <option value="La Pintana">La Pintana</option>
                        <option value="Puente Alto">Puente Alto</option>
                        <option value="Cerrillos">Cerrillos</option>
                        <option value="Maipu">Maipu</option>
                    </select>
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

    <!-- Scripts de Materialize -->
    <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <script type="text/javascript" src="js/materialize.min.js"></script>
    <script>
        $(document).ready(function () {
            $('select').formSelect();
        });
    </script>

    <%@ include file="footer.jsp" %>
</body>

</html>

<%-- 
    Document   : estadoVehiculo

    Author     : maiv
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ include file="header.jsp" %> <!-- Incluir el header aquí -->
<!DOCTYPE html>
<html>
    <head>
        <!--Import Google Icon Font-->
        <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <!-- Importar Material Icons para los íconos -->
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <!-- Importar Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
        <!-- Importar Bootstrap JS Bundle con Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Importar Font Awesome -->
         <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
        <!--Import materialize.css-->
        <link type="text/css" rel="stylesheet" href="css/styles.css"
              media="screen,projection"/>
        <link rel="stylesheet" href="css/header.css">
        <!--Let browser know website is optimized for mobile-->
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Estado Vehiculo </title>
    </head>
    <body>          
     <div class="container-menu d-flex align-items-center justify-content-center vh-100">
        <div class="section bg-white rounded shadow p-5">
            <div class="text-center mb-5">
                <h4 class="Title">Estado Vehículo</h4> 
            </div>
            <div class="row justify-content-center">
                <div class="col-lg-8 col-md-10 col-sm-12">
                    <h5 class="mb-4">Busque su vehículo</h5>
                    <form action="ControladorEstadoVehi" method="POST">
                        <!-- Campo de entrada -->
                        <div class="input-group mb-4">
                            <span class="input-group-text">
                                <i class="material-icons">directions_car</i>
                            </span>
                            <input type="text" class="form-control" maxlength="6" name="patente" placeholder="Ingrese patente del vehículo" required>
                        </div>
                        <!-- Botón de búsqueda -->
                        <div class="d-grid mb-4">
                            <button type="submit" name="opcion" value="Buscar" class="button">
                                <span class="button_top">Buscar</span>
                            </button>
                        </div>
                    </form>
                    <!-- Botón de retroceso -->
                    <div class="d-grid">
                        <a href="index.jsp" class="back-button">
                            <i class="material-icons left">arrow_back</i>Atrás
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
            
        <%@ include file="footer.jsp" %> <!-- Incluir el footer aquí -->
        <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
        <script type="text/javascript" src="js/materialize.min.js"></script>        
    </body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<aside class="sidebar">
    <div class="logo">
        <a href="index.jsp">
            <img src="logo.png" alt="Logo" class="logo-img">
            <span class="logo-text">LA TUERCA</span>
        </a>
    </div>
    <ul class="menu-list">
        <li><a href="index.jsp"><i class="fas fa-home"></i> Inicio</a></li>
        <li><a href="registroTaller.jsp"><i class="fas fa-tools"></i> Registro Taller</a></li>
        <li><a href="actualizarTaller.jsp"><i class="fas fa-edit"></i> Actualizar Taller</a></li>
        <li><a href="clientes.jsp"><i class="fas fa-users"></i> Clientes</a></li>
        <li><a href="vehiculos.jsp"><i class="fas fa-car"></i> Vehículos</a></li>
        <li><a href="reportes.jsp"><i class="fas fa-chart-bar"></i> Reportes</a></li>
    </ul>
    <button class="logout-btn">
        <span class="icon-container"><i class="fas fa-sign-out-alt"></i></span>
        <span class="text">Cerrar Sesión</span>
    </button>
</aside>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="modelo.Usuario"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <title>Lista de Usuarios</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        <jsp:include page="header.jsp" />

        <div class="container mt-4">
            <h2 class="text-center">Lista de Usuarios</h2>

            <div class="border rounded p-3 bg-light">
                <div class="row fw-bold border-bottom py-2 bg-dark text-white">
                    <div class="col-4">Documento</div>
                    <div class="col-4">Nombre</div>
                    <div class="col-4">Apellido</div>
                </div>

                <!-- JSTL y Expression Language -->
                <c:choose>
                    <c:when test="${not empty usuarios}">
                        <c:forEach var="usuario" items="${usuarios}">
                            <div class="row border-bottom py-2">
                                <div class="col-4">${usuario.contrasena}</div>
                                <div class="col-4">${usuario.nombre}</div>
                                <div class="col-4">${usuario.apellido}</div>
                            </div>
                        </c:forEach>
                    </c:when>
                    <c:otherwise>
                        <div class="row py-2">
                            <div class="col text-center text-danger">No hay usuarios registrados.</div>
                        </div>
                    </c:otherwise>
                </c:choose>
            </div>
        </div>

        <%@ include file="footer.jsp" %>
    </body>
</html>

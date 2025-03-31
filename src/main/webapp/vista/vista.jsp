<%@page import="java.util.List"%>
<%@page import="modelo.Usuario"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <title>Lista de Usuarios</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

    </head>
    <body>
        <jsp:include page="header.jsp" />

        <div class="container mt-4">
            <h2 class="text-center">Lista de Usuarios</h2>

            <div class="border rounded p-3 bg-light">
                <!-- Encabezados -->
                <div class="row fw-bold border-bottom py-2 bg-dark text-white">
                    <div class="col-4">Documento</div>
                    <div class="col-4">Nombre</div>
                    <div class="col-4">Apellido</div>
                </div>

                <!-- Datos de usuarios -->
                <%
                    List<Usuario> usuarios = (List<Usuario>) request.getAttribute("usuarios");
                    if (usuarios != null && !usuarios.isEmpty()) {
                        for (Usuario usuario : usuarios) {
                %>
                <div class="row border-bottom py-2">
                    <div class="col-4"><%= usuario.getContrasena()%></div>
                    <div class="col-4"><%= usuario.getNombre()%></div>
                    <div class="col-4"><%= usuario.getApellido()%></div>
                </div>
                <%
                    }
                } else {
                %>
                <div class="row py-2">
                    <div class="col text-center text-danger">No hay usuarios registrados.</div>
                </div>
                <% }%>
            </div>
        </div>


        <%@ include file="footer.jsp" %>

    </body>
</html>

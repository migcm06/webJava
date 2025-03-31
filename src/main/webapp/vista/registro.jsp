<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>Registrar Usuario</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    </head>
    <body>
        <%@ include file="header.jsp" %>

        <div class="container mt-4">
            <h3 class="text-center">Registrar Usuario</h3>
            <div class="row justify-content-center">
                <div class="col-md-6">
                    <form action="${pageContext.request.contextPath}/ServletControlador" method="POST">
                        <div class="mb-3">
                            <label for="documento" class="form-label">Documento</label>
                            <input type="text" class="form-control" id="documento" name="documento" required />
                        </div>

                        <div class="mb-3">
                            <label for="nombre" class="form-label">Nombre</label>
                            <input type="text" class="form-control" id="nombre" name="nombre" required />
                        </div>

                        <div class="mb-3">
                            <label for="apellido" class="form-label">Apellido</label>
                            <input type="text" class="form-control" id="apellido" name="apellido" required />
                        </div>

                        <button type="submit" class="btn btn-success w-100">Registrar</button>
                    </form>
                </div>
            </div>
        </div>

        <%@ include file="footer.jsp" %>
    </body>
</html>


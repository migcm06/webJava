<%@ page contentType="text/html; charset=UTF-8" %>
<header class="bg-success text-white p-3">
    <div class="container d-flex justify-content-between align-items-center">
        <a href="javascript:window.history.back();">
            <button type="button" class="btn btn-primary">
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-house-fill" viewBox="0 0 16 16">
                    <path d="M8.707 1.5a1 1 0 0 0-1.414 0L.646 8.146a.5.5 0 0 0 .708.708L8 2.207l6.646 6.647a.5.5 0 0 0 .708-.708L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293z"></path>
                    <path d="m8 3.293 6 6V13.5a1.5 1.5 0 0 1-1.5 1.5h-9A1.5 1.5 0 0 1 2 13.5V9.293z"></path>
                </svg>
                INICIO
            </button>
        </a>

        <h1 class="h3">WEB REGISTRADORA DE USUARIOS</h1>
        <nav>
            <div class="text-end mb-3">
                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#registroModal">
                    Registrar Usuario
                </button>
            </div>
        </nav>
        <!-- Modal de Registro -->
        <div class="modal fade" id="registroModal" tabindex="-1" aria-labelledby="registroModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="registroModalLabel">Registrar Usuario</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Cerrar"></button>
                    </div>
                    <div class="modal-body">
                        <form action="${pageContext.request.contextPath}/ServletControlador" method="POST">
                            <div class="mb-3">
                                <label for="documento" class="form-label text-success">Documento</label>
                                <input type="text" class="form-control" id="documento" name="documento" required />
                            </div>

                            <div class="mb-3">
                                <label for="nombre" class="form-label text-success">Nombre</label>
                                <input type="text" class="form-control" id="nombre" name="nombre" required />
                            </div>

                            <div class="mb-3">
                                <label for="apellido" class="form-label text-success">Apellido</label>
                                <input type="text" class="form-control" id="apellido" name="apellido" required />
                            </div>

                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
                                <button type="submit" class="btn btn-primary">Registrar</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>
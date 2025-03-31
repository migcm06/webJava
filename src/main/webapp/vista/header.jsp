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
            <a href="${pageContext.request.contextPath}/vista/registro.jsp" class="btn btn-light" style="width: 105%">Registrar</a>

        </nav>
    </div>
</header>
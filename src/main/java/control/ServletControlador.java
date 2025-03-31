package control;

import java.io.IOException;
import java.util.List;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import modelo.Usuario;
import modelo.UsuarioDAO;

@WebServlet(name = "ServletControlador", urlPatterns = {"/ServletControlador"})
public class ServletControlador extends HttpServlet {

    private final UsuarioDAO usuarioDAO = new UsuarioDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        List<Usuario> listaUsuarios = usuarioDAO.obtenerUsuarios();

        // Asegurar que la lista no sea null
        if (listaUsuarios == null) {
            listaUsuarios = List.of(); // Lista vacía para evitar errores
        }

        request.setAttribute("usuarios", listaUsuarios);
        // Redirige a la página vista.jsp para mostrar la lista de usuarios
        request.getRequestDispatcher("/vista/vista.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        System.out.println("🚀 doPost() se está ejecutando correctamente.");

        String documento = request.getParameter("documento");
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");

        System.out.println("Documento: " + documento);
        System.out.println("Nombre: " + nombre);
        System.out.println("Apellido: " + apellido);

        // Crear un nuevo usuario y agregarlo a la base de datos
        Usuario usuario = new Usuario(documento, nombre, apellido);
        usuarioDAO.agregarUsuario(usuario);

        // Obtener la lista actualizada de usuarios después de registrar uno nuevo
        List<Usuario> listaUsuarios = usuarioDAO.obtenerUsuarios();

        // Asegurar que la lista no sea null
        if (listaUsuarios == null) {
            listaUsuarios = List.of(); // Lista vacía para evitar errores
        }

        // Establecer la lista de usuarios en el request y redirigir a la vista
        request.setAttribute("usuarios", listaUsuarios);
        request.getRequestDispatcher("/vista/vista.jsp").forward(request, response);
    }

}

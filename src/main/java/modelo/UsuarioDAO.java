package modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UsuarioDAO {

    // MÉTODO PARA OBTENER USUARIOS
    public List<Usuario> obtenerUsuarios() {
        List<Usuario> lista = new ArrayList<>();
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        String sql = "SELECT contrasena, nombre_user, apellido_user FROM usuario";  

        try {
            con = Conexion.conectar();
            System.out.println("✅ Conexión establecida correctamente.");
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();

            while (rs.next()) {
                Usuario usuario = new Usuario(
                        rs.getString("contrasena"),  // 
                        rs.getString("nombre_user"),
                        rs.getString("apellido_user")
                );
                lista.add(usuario);
                System.out.println("🔹 Usuario encontrado: " + usuario.getNombre() + " " + usuario.getApellido() + " - Documento: " + usuario.getContrasena());
            }

            if (lista.isEmpty()) {
                System.out.println("⚠️ No se encontraron usuarios en la base de datos.");
            }

        } catch (SQLException e) {
            System.out.println("❌ Error al obtener usuarios: " + e.getMessage());
        } finally {
            try {
                if (rs != null) rs.close();
                if (ps != null) ps.close();
                if (con != null) con.close();
            } catch (SQLException e) {
                System.out.println("❌ Error al cerrar la conexión: " + e.getMessage());
            }
        }
        return lista;
    }

    // AGREGAR USUARIO
    public void agregarUsuario(Usuario usuario) {
        Connection con = null;
        PreparedStatement ps = null;
        String sql = "INSERT INTO usuario (contrasena, nombre_user, apellido_user) VALUES (?, ?, ?)";  //

        try {
            con = Conexion.conectar();
            ps = con.prepareStatement(sql);
            ps.setString(1, usuario.getContrasena()); 
            ps.setString(2, usuario.getNombre());
            ps.setString(3, usuario.getApellido());

            int filasAfectadas = ps.executeUpdate();

            if (filasAfectadas > 0) {
                System.out.println("✅ Usuario agregado correctamente: " + usuario.getNombre() + " " + usuario.getApellido() + " - Documento: " + usuario.getContrasena());
            } else {
                System.out.println("⚠️ No se insertó el usuario.");
            }

        } catch (SQLException e) {
            System.out.println("❌ Error al agregar usuario: " + e.getMessage());
        } finally {
            try {
                if (ps != null) ps.close();
                if (con != null) con.close();
            } catch (SQLException e) {
                System.out.println("❌ Error al cerrar la conexión: " + e.getMessage());
            }
        }
    }
}

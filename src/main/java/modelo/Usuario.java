package modelo;

public class Usuario {
    private final String contrasena;
    private final String nombre;
    private final String apellido;

    public Usuario(String contrasena, String nombre, String apellido) {
        this.contrasena = contrasena ;
        this.nombre = nombre;
        this.apellido = apellido;
    }

    public String getContrasena() {
        return contrasena;
    }

    public String getNombre() {
        return nombre;
    }

    public String getApellido() {
        return apellido;
    }
}

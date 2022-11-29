package Daos;

import Beans.Usuarios;

import java.sql.*;
import java.util.ArrayList;

public class DaosUsuario {

    private Connection connection;
    public Usuarios obtenerUsuario(String correoUsuario, String contrasenaUsuario){
        Usuarios usuario = new Usuarios();

        String sql="";

        try (Connection connection = this.getConnection();
             PreparedStatement pstmt = connection.prepareStatement(sql)){



        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        return usuario;
    }
    public Usuarios validarUsuarioPassword(String email, String password) {

        String sql = "SELECT * FROM Usuarios WHERE correo = ? AND password=?";
        Usuarios usuario = new Usuarios();

        try (Connection conn = this.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql);) {

            pstmt.setString(1, email);
            pstmt.setString(2, password);

            try (ResultSet rs = pstmt.executeQuery();) {
                if(rs.next()){
                    String correoUsuario = rs.getString("correo");
                    String contrasenaUsuario = rs.getString("contraseña");
                    usuario = this.obtenerUsuario(correoUsuario,contrasenaUsuario);
                }
            }


        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        return usuario;
    }

    public Connection getConnection() {
        return connection;
    }

    public void setConnection(Connection connection) {
        this.connection = connection;
    }
}

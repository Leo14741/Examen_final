package Daos;

import Beans.CorteLaser;
import Beans.EscaneoDigital3D;
import Beans.Impresion3D;
import Beans.Usuarios;

import java.sql.*;
import java.util.ArrayList;

public class DaosUsuario {

    private Connection connection;
    public Usuarios obtenerUsuario(String correoUsuario, String contrasenaUsuario){
        Usuarios usuario = new Usuarios();

        String sql="SELECT * FROM Usuarios u\n" +
                "inner join TipoUsuarios\n" +
                "on TipoUsuarios.idTipoUsuarios = u.TipoUsuarios_idTipoUsuarios\n" +
                "where (correo=?, contrasenia=?);";

        try (Connection connection = this.getConnection();
             PreparedStatement pstmt = connection.prepareStatement(sql)){
            pstmt.setString(1, correoUsuario);
            pstmt.setString(2, contrasenaUsuario);

            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {

                usuario.setCorreoUsuario(rs.getString("correo"));
                usuario.setContrasenaUsuario(rs.getString("contrasenia"));

            }


        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return(usuario);
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

    public void crearImpresion(Impresion3D impresion3D){

        String sql = "INSERT INTO Impresion3D (densidadPieza,grosor,alturaCapa,material," +
                "urlImagen,autoservicio) VALUES (?,?,?,?,?,?)";

        try (Connection conn = this.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql);) {

            pstmt.setInt(1, impresion3D.getDensidadPieza());
            pstmt.setString(2, impresion3D.getGrosor());
            pstmt.setFloat(3, impresion3D.getAlturaDeLaCapa());
            pstmt.setString(4,impresion3D.getMaterial());
            pstmt.setString(5,impresion3D.getUrlDeLaImagen());
            pstmt.setString(6, impresion3D.getAutoservicio());
            pstmt.executeUpdate();

        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

    public void crearCorte(CorteLaser corteLaser){

        String sql = "INSERT INTO CorteLaser (grosorLinea,colorLinea,material,dimensiones," +
                "urlImagen) VALUES (?,?,?,?,?)";

        try (Connection conn = this.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql);) {

            pstmt.setString(1, corteLaser.getGrosorLinea());
            pstmt.setString(2, corteLaser.getColorDeLinea());
            pstmt.setString(3,corteLaser.getMaterial());
            pstmt.setString(4, corteLaser.getDimensiones());
            pstmt.setString(5,corteLaser.getUrlDeLaImagen());
            pstmt.executeUpdate();

        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

    public void crearEscaneoDigital3D(EscaneoDigital3D escaneoDigital3D) {

        String sql = "INSERT INTO CorteLaser (largo,ancho,altura,resolucion,) VALUES (?,?,?,?)";

        try (Connection conn = this.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql);) {

            pstmt.setFloat(1, escaneoDigital3D.getLargo());
            pstmt.setFloat(2, escaneoDigital3D.getAncho());
            pstmt.setFloat(3, escaneoDigital3D.getAltura());
            pstmt.setString(4, escaneoDigital3D.getResolucion());
            pstmt.executeUpdate();

        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }
}

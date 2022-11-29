package Servlets;

import Beans.CorteLaser;
import Beans.EscaneoDigital3D;
import Beans.Impresion3D;
import Daos.DaosUsuario;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "UsuarioServlet", value = "/UsuarioServlet")
public class UsuarioServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action") == null ?
                "principal" : request.getParameter("action");

        RequestDispatcher view;

        switch (action) {
            case "principal":
                view = request.getRequestDispatcher("Principal.jsp");
                view.forward(request, response);
                break;
            case "impresion3D":
                view = request.getRequestDispatcher("Impresion3D.jsp");
                view.forward(request, response);
                break;
            case "escaneo":
                view = request.getRequestDispatcher("EscaneoDigital.jsp");
                view.forward(request, response);
                break;
            case "corteLaser":
                view = request.getRequestDispatcher("CorteLaser.jsp");
                view.forward(request, response);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action") == null ? "lista" : request.getParameter("action");
        DaosUsuario daosUsuario = new DaosUsuario();
        RequestDispatcher view;

        switch (action) {
            case "crearImpresion":
                Impresion3D impresion3D = new Impresion3D();

                impresion3D.setDensidadPieza(Integer.parseInt(request.getParameter("Densidad")));
                impresion3D.setGrosor(request.getParameter("Grosor"));
                impresion3D.setAlturaDeLaCapa(Float.parseFloat(request.getParameter("Altura")));
                impresion3D.setMaterial(request.getParameter("Material"));
                impresion3D.setUrlDeLaImagen(request.getParameter("URL"));
                impresion3D.setAutoservicio(request.getParameter("Autoservicio"));

                daosUsuario.crearImpresion(impresion3D);
                response.sendRedirect(request.getContextPath() + "/UsuarioServlet");

                break;
            case "crearCorte":
                CorteLaser corteLaser = new CorteLaser();

                corteLaser.setGrosorLinea(request.getParameter("Grosor"));
                corteLaser.setColorDeLinea(request.getParameter("Color"));
                corteLaser.setMaterial(request.getParameter("Material"));
                corteLaser.setDimensiones(request.getParameter("Dimensiones"));
                corteLaser.setUrlDeLaImagen(request.getParameter("URL"));

                daosUsuario.crearCorte(corteLaser);
                response.sendRedirect(request.getContextPath() + "/UsuarioServlet");
                break;
            case "crearEscaneo":
                EscaneoDigital3D escaneoDigital3D = new EscaneoDigital3D();

                escaneoDigital3D.setAncho(Float.parseFloat(request.getParameter("Ancho")));
                escaneoDigital3D.setAltura(Float.parseFloat(request.getParameter("Altura")));
                escaneoDigital3D.setLargo(Float.parseFloat(request.getParameter("Largo")));
                escaneoDigital3D.setResolucion(request.getParameter("Resolucion"));

                daosUsuario.crearEscaneoDigital3D(escaneoDigital3D);
                response.sendRedirect(request.getContextPath() + "/UsuarioServlet");
                break;
        }

    }
}

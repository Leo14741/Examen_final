package Servlets;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "UsuarioServlet", value = "/UsuarioServlet")
public class UsuarioServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action") == null ?
                "loginform" : request.getParameter("action");

        RequestDispatcher view;

        switch (action) {
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

    }
}

package Servlets;

import Beans.Usuarios;
import Daos.DaosUsuario;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "SessionServlet", urlPatterns = {"/SessionServlet","/Session",""})
public class
SessionServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action") == null ?
                "loginform" : request.getParameter("action");

        RequestDispatcher view;

        switch (action) {
            case "loginform":
                view = request.getRequestDispatcher("InicioDeSesion.jsp");
                view.forward(request, response);
                break;
            case "registrarse":
                view = request.getRequestDispatcher("Registrarse.jsp");
                view.forward(request, response);
                break;
            case "logout":
                HttpSession session = request.getSession();
                session.invalidate();
                response.sendRedirect(request.getContextPath());
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        DaosUsuario usuarioDaos = new DaosUsuario();

        String email = request.getParameter("inputEmail");
        String password = request.getParameter("inputPassword");

        Usuarios usuarios = usuarioDaos.validarUsuarioPassword(email,password);

        if(usuarios != null){
            HttpSession session = request.getSession();
            session.setAttribute("usuarioSession", usuarios);

            response.sendRedirect(request.getContextPath());
        }else{
            response.sendRedirect(request.getContextPath() + "/SessionServlet?error");
        }

    }
}

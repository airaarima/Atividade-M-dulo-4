package controller;

import dao.UsuariosDAO;
import model.Usuarios;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/listar")
public class ListarUsuariosController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        UsuariosDAO usuariosDAO = new UsuariosDAO();
        List<Usuarios> usuarios = usuariosDAO.listarUsuarios();

        req.setAttribute("usuarios", usuarios);
        req.getRequestDispatcher("listar.jsp").forward(req,resp);
    }
}
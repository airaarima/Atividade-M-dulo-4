package controller;

import dao.UsuariosDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/excluir")
public class ExcluirUsuarioController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        UsuariosDAO usuariosDAO = new UsuariosDAO();
        usuariosDAO.excluirUsuario(id);

        resp.sendRedirect("listar");
    }
}

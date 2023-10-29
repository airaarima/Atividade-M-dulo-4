package controller;

import dao.UsuariosDAO;
import model.Usuarios;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.LocalDate;

@WebServlet("/editar")
public class EditarUsuarioController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        UsuariosDAO usuariosDAO = new UsuariosDAO();
        Usuarios usuario = usuariosDAO.vizualizarUsuario(id);

        req.setAttribute("usuario", usuario);
        req.getRequestDispatcher("atualizar.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        UsuariosDAO usuariosDAO = new UsuariosDAO();
        Usuarios usuario = new Usuarios();

        usuario.setId(Integer.parseInt(req.getParameter("id")));
        usuario.setNome(req.getParameter("nome"));
        usuario.setCPF(req.getParameter("CPF"));
        usuario.setDataNascimento(LocalDate.parse(req.getParameter("dataNasc")));
        usuario.setEmail(req.getParameter("email"));
        usuario.setSenha(req.getParameter("senha"));
        usuario.setRua(req.getParameter("rua"));
        usuario.setNumero(req.getParameter("numero"));
        usuario.setBairro(req.getParameter("bairro"));
        usuario.setCidade(req.getParameter("cidade"));
        usuario.setUF(req.getParameter("UF"));

        usuariosDAO.editarUsuario(usuario);
        resp.sendRedirect("listar");
    }
}

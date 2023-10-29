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

@WebServlet("/cadastrar")
public class CriarUsuarioController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Usuarios usuario = new Usuarios();

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

        UsuariosDAO usuarioDAO = new UsuariosDAO();
        usuarioDAO.criarUsuario(usuario);

        resp.sendRedirect("/reconecta-turismo/listar");
    }
}

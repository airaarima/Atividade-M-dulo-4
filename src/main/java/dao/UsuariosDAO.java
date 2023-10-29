package dao;


import database.Conexao;
import model.Usuarios;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UsuariosDAO {
    private Connection conexao = null;
    private PreparedStatement pstm = null;

    public void criarUsuario(Usuarios usuario) {
        String sql = "insert into usuarios (nome_completo, CPF, data_nascimento, email, senha, rua, numero, bairro, " +
                "cidade, UF) values (?,?,?,?,?,?,?,?,?,?)";

        try {
            conexao = Conexao.criarConexao();
            pstm = conexao.prepareStatement(sql);

            pstm.setString(1, usuario.getNome());
            pstm.setString(2, usuario.getCPF());
            pstm.setObject(3, usuario.getDataNascimento());
            pstm.setString(4, usuario.getEmail());
            pstm.setString(5, usuario.getSenha());
            pstm.setString(6, usuario.getRua());
            pstm.setString(7, usuario.getNumero());
            pstm.setString(8, usuario.getBairro());
            pstm.setString(9, usuario.getCidade());
            pstm.setString(10, usuario.getUF());

            pstm.execute();
        } catch (Exception e) {
            e.printStackTrace();
        } finally{
            try{
                if(pstm!=null){
                    pstm.close();
                }
                if (conexao!=null){
                    conexao.close();
                }
            } catch (Exception e){
                e.printStackTrace();
            }

        }
    }

    public void editarUsuario(Usuarios usuario){
        String sql = "update usuarios set nome_completo = ?, CPF=?, data_nascimento=?, email=?, rua=?, numero=?, " +
                "bairro=?, cidade=?, UF=?, senha=? where id_usuario=?";

        try{
            conexao = Conexao.criarConexao();
            pstm = conexao.prepareStatement(sql);

            Date sqlDate = Date.valueOf(usuario.getDataNascimento());

            pstm.setString(1, usuario.getNome());
            pstm.setString(2,usuario.getCPF());
            pstm.setDate(3, sqlDate);
            pstm.setString(4, usuario.getEmail());
            pstm.setString(5, usuario.getRua());
            pstm.setString(6, usuario. getNumero());
            pstm.setString(7, usuario.getBairro());
            pstm.setString(8, usuario.getCidade());
            pstm.setString(9, usuario.getUF());
            pstm.setString(10, usuario.getSenha());
            pstm.setInt(11,usuario.getId());

            pstm.executeUpdate();

        }catch (Exception e){
            e.printStackTrace();
        } finally{
            try{
                if(pstm!=null){
                    pstm.close();
                }
                if (conexao!=null){
                    conexao.close();
                }
            } catch (Exception e){
                e.printStackTrace();
            }
        }
    }

    public Usuarios vizualizarUsuario(int id){
        String sql = "select * from usuarios where id_usuario=?";
        Usuarios usuario = null;
        try {
            conexao=Conexao.criarConexao();
            pstm=conexao.prepareStatement(sql);

            pstm.setInt(1, id);

            ResultSet r = pstm.executeQuery();
            if(r.next()){
                usuario = new Usuarios();
                usuario.setId(r.getInt("id_usuario"));
                usuario.setNome(r.getString("nome_completo"));
                usuario.setCPF(r.getString("CPF"));
                usuario.setDataNascimento(r.getDate("data_nascimento").toLocalDate());
                usuario.setEmail(r.getString("email"));
                usuario.setRua(r.getString("rua"));
                usuario.setNumero(r.getString("numero"));
                usuario.setBairro(r.getString("bairro"));
                usuario.setCidade(r.getString("cidade"));
                usuario.setUF(r.getString("UF"));
                usuario.setSenha(r.getString("senha"));
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            try{
                if(pstm!=null){
                    pstm.close();
                }
                if (conexao!=null){
                    conexao.close();
                }
            } catch (Exception e){
                e.printStackTrace();
            }
        }

        return usuario;
    }

    public List<Usuarios> listarUsuarios(){
        String sql = "select * from usuarios";

        List<Usuarios> usuarios = new ArrayList<Usuarios>();

        try {
            conexao=Conexao.criarConexao();
            pstm=conexao.prepareStatement(sql);
            ResultSet r = pstm.executeQuery();
            while(r.next()){
                Usuarios usuario = new Usuarios();
                usuario.setId(r.getInt("id_usuario"));
                usuario.setNome(r.getString("nome_completo"));
                usuario.setCPF(r.getString("CPF"));
                usuario.setEmail(r.getString("email"));

                usuarios.add(usuario);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try{
                if(pstm!=null){
                    pstm.close();
                }
                if (conexao!=null){
                    conexao.close();
                }
            } catch (Exception e){
                e.printStackTrace();
            }
        }
        return usuarios;
    }

    public void excluirUsuario(int id){
        String sql = "delete from usuarios where id_usuario = ?";

        try{
            conexao=Conexao.criarConexao();
            pstm=conexao.prepareStatement(sql);

            pstm.setInt(1,id);

            pstm.execute();
        }catch(Exception e){
            e.printStackTrace();
        } finally{
            try{
                if(pstm!=null){
                    pstm.close();
                }
                if (conexao!=null){
                    conexao.close();
                }
            } catch (Exception e){
                e.printStackTrace();
            }

        }
    }
}

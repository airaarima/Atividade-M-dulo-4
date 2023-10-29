package database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexao {
    private static final String URL ="jdbc:mysql://localhost:3306/reconectaturismo";
    private static final String USERNAME ="root";
    private static final String PASSWORD ="root";

    public static Connection criarConexao(){
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            return DriverManager.getConnection(URL, USERNAME, PASSWORD);
        } catch (SQLException | ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
    }
}

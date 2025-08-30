package config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DataBaseConfig {

    static String url = "jdbc:mysql://localhost:3306/bookmymovies";
    static String username = "root";
    static String password = "Saloni2005@";

    public static Connection getConnection() {
        Connection conn = null;
        try {
            // JDBC Driver load karna (new JDBC versions me optional hai, but safe hai)
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Database connection establish
            conn = DriverManager.getConnection(url, username, password);
        } catch (ClassNotFoundException e) {
            System.out.println("⚠️ JDBC Driver not found: " + e.getMessage());
        } catch (SQLException e) {
            System.out.println("⚠️ Database connection failed: " + e.getMessage());
        }
        return conn;
    }
}

package Config;

import java.sql.Connection;
import java.sql.DriverManager;

public class Conexion {
    Connection con;
    public Conexion () {
        try {
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/newdb?autoReconnect=true&useSSL=false&serverTimezone=UTC", "root", "");

        } catch (Exception e) {
            System.err.println("Error" + e);
        }
    }

    public Connection getConnection() {
        return con;
    }
}

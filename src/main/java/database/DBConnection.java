package database;

import java.sql.*;

public class DBConnection {

    protected Connection con;

    public DBConnection() {

        String url = System.getenv().getOrDefault(
                "DB_URL",
                "jdbc:mysql://mysql-ca81bda-studentmanagementsystem29.d.aivencloud.com:24996/studentmanagementsystem?sslMode=REQUIRED"
        );

        String username = System.getenv().getOrDefault(
                "DB_USERNAME",
                "avnadmin"
        );

        String password = System.getenv("DB_PASSWORD");

        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

            con = DriverManager.getConnection(url, username, password);

            System.out.println("Connected Successfully");

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
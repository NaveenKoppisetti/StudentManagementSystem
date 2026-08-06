package dao;

import java.sql.*;

import database.DBConnection;
import model.Student;

public class StudentDAO extends DBConnection {

    public boolean registerStudent(Student student) {

        String query = "INSERT INTO students(name, email, password, phone, course, city) VALUES(?,?,?,?,?,?)";

        try {

            PreparedStatement ps = con.prepareStatement(query);

            ps.setString(1, student.getName());
            ps.setString(2, student.getEmail());
            ps.setString(3, student.getPassword());
            ps.setString(4, student.getPhone());
            ps.setString(5, student.getCourse());
            ps.setString(6, student.getCity());

            return ps.executeUpdate() > 0;

        } catch (Exception e) {

            throw new RuntimeException("Failed to Register Student", e);

        }
    }

    public boolean emailExists(String email) {

        String query = "SELECT * FROM students WHERE email = ?";

        try {

            PreparedStatement ps = con.prepareStatement(query);

            ps.setString(1, email);

            ResultSet rs = ps.executeQuery();

            return rs.next();

        } catch (Exception e) {

            throw new RuntimeException("Failed to Check Email", e);

        }
    }

    public Student loginStudent(String email, String password) {

        String query = "SELECT * FROM students WHERE email = ? AND password = ?";

        try {

            PreparedStatement ps = con.prepareStatement(query);

            ps.setString(1, email);
            ps.setString(2, password);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {

                Student stu = new Student();

                stu.setId(rs.getInt("id"));
                stu.setName(rs.getString("name"));
                stu.setEmail(rs.getString("email"));
                stu.setPassword(rs.getString("password"));
                stu.setPhone(rs.getString("phone"));
                stu.setCourse(rs.getString("course"));
                stu.setCity(rs.getString("city"));

                return stu;
            }

        } catch (Exception e) {

            throw new RuntimeException("Login Failed", e);

        }

        return null;
    }

    public boolean updateStudent(Student student) {

        String query = "UPDATE students SET name=?, phone=?, course=?, city=? WHERE email=?";

        try {

            PreparedStatement ps = con.prepareStatement(query);

            ps.setString(1, student.getName());
            ps.setString(2, student.getPhone());
            ps.setString(3, student.getCourse());
            ps.setString(4, student.getCity());
            ps.setString(5, student.getEmail());

            return ps.executeUpdate() > 0;

        } catch (Exception e) {

            throw new RuntimeException("Failed to Update Student", e);

        }
    }

    public boolean deleteStudent(String email) {

        String query = "DELETE FROM students WHERE email = ?";

        try {

            PreparedStatement ps = con.prepareStatement(query);

            ps.setString(1, email);

            return ps.executeUpdate() > 0;

        } catch (Exception e) {

            throw new RuntimeException("Failed to Delete Student", e);

        }
    }
}
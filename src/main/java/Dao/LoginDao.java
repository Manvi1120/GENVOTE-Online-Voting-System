package Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.Login;

public class LoginDao {
	 public static boolean validate(Login login) throws ClassNotFoundException {
	        boolean status = false;
	        
	        Class.forName("com.mysql.cj.jdbc.Driver");
	        
	        try (Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/voting?useSSL=false", "root", "M5@password");
	             PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM login WHERE username = ? AND password = ?")) {
	            
	            preparedStatement.setString(1, login.getUsername());
	            preparedStatement.setString(2, login.getPassword());
	            
	            System.out.println(preparedStatement);
	            ResultSet rs = preparedStatement.executeQuery();
	            status = rs.next();
	        } catch (SQLException e) {
	            printSQLException(e);
	        }
	        return status;
	    }

	    private static void printSQLException(SQLException ex) {
	        // Handle SQL exceptions
	        for (Throwable e : ex) {
	            if (e instanceof SQLException) {
	                e.printStackTrace(System.err);
	                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
	                Throwable t = ex.getCause();
	                while (t != null) {
	                    System.out.println("Cause: " + t);
	                    t = t.getCause();
	                }
	            }
	        }
	    }
}

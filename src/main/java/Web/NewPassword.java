package Web;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class NewPassword
 */
@WebServlet("/newPassword")
public class NewPassword extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();
        String newPassword = request.getParameter("password");
        String confPassword = request.getParameter("confPassword");
        String email = (String) session.getAttribute("email");  // Get email from session
        
        RequestDispatcher dispatcher = null;

        // Debug: Check email
        System.out.println("Email from session: " + email);

        if (email == null) {
            System.out.println("Email is null in session");
            request.setAttribute("status", "emailNotFound");
            dispatcher = request.getRequestDispatcher("newPassword.jsp");
            dispatcher.forward(request, response);
            return;
        }

        if (newPassword != null && confPassword != null && newPassword.equals(confPassword)) {
            try {
                // Ensure correct MySQL driver
                Class.forName("com.mysql.cj.jdbc.Driver");

                // Database connection
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/voting?useSSL=false", "root", "M5@password");

                // Debug: Log SQL statement inputs
                System.out.println("Updating password for email: " + email + " with new password: " + newPassword);

                // Prepare update statement
                PreparedStatement pst = con.prepareStatement("UPDATE login SET password = ? WHERE uemail = ?");
                pst.setString(1, newPassword);
                pst.setString(2, email);

                // Execute update and check row count
                int rowCount = pst.executeUpdate();
                System.out.println("Row count after update: " + rowCount);

                if (rowCount > 0) {
                    request.setAttribute("status", "resetSuccess");
                    dispatcher = request.getRequestDispatcher("login.jsp");
                } else {
                    request.setAttribute("status", "resetFailed");
                    dispatcher = request.getRequestDispatcher("newPassword.jsp");
                }
                dispatcher.forward(request, response);

            } catch (SQLException e) {
                // Log SQL exception details
                e.printStackTrace();
                System.err.println("SQLState: " + e.getSQLState());
                System.err.println("ErrorCode: " + e.getErrorCode());
                System.err.println("Message: " + e.getMessage());

                request.setAttribute("status", "resetFailed");
                dispatcher = request.getRequestDispatcher("newPassword.jsp");
                dispatcher.forward(request, response);
            } catch (Exception e) {
                e.printStackTrace();
                request.setAttribute("status", "resetFailed");
                dispatcher = request.getRequestDispatcher("newPassword.jsp");
                dispatcher.forward(request, response);
            }
        } else {
            System.out.println("Passwords do not match or are null.");
            request.setAttribute("status", "passwordMismatch");
            dispatcher = request.getRequestDispatcher("newPassword.jsp");
            dispatcher.forward(request, response);
        }
    }
}

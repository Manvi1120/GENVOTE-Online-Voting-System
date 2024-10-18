package Web;

import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Voter;
import Dao.VoterDao;

/**
 * Servlet implementation class VoterLoginServlet
 */
@WebServlet("/VoterLoginServlet")
public class VoterLoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private VoterDao voterDao;
    private static final Logger logger = Logger.getLogger(VoterLoginServlet.class.getName());

    public void init() {
        voterDao = new VoterDao();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String voterId = request.getParameter("voterId");
        String password = request.getParameter("password");

        try {
            // Validate voter credentials
            boolean isValid = voterDao.validateVoterLogin(voterId, password);

            if (isValid) {
                // Fetch the voter object from the database
                Voter voter = voterDao.getVoterById(voterId);

                if (voter != null) {
                    // Check if the voter has already voted
                    if (voter.getHasVoted() == 1) {
                        // Redirect to "Already Voted" page if voter has voted
                        response.sendRedirect("AlreadyVoted.jsp");
                    } else {
                        // Set the voter in session and redirect to dashboard
                        request.getSession().setAttribute("voter", voter);
                        response.sendRedirect("VoterDashboard");
                    }
                } else {
                    // If voter is not found, set error message
                    request.setAttribute("errorMessage", "Voter not found.");
                    request.getRequestDispatcher("voter_login.jsp").forward(request, response);
                }
            } else {
                // If credentials are invalid, set error message
                request.setAttribute("errorMessage", "Invalid voter ID or password.");
                request.getRequestDispatcher("voter_login.jsp").forward(request, response);
            }
        } catch (SQLException e) {
            // Handle database access errors
            logger.log(Level.SEVERE, "Database access error", e);
            request.setAttribute("errorMessage", "An error occurred while processing your request. Please try again later.");
            request.getRequestDispatcher("voter_login.jsp").forward(request, response);
        }
    }
}

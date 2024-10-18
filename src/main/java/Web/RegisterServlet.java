package Web;

import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Voter;
import Dao.VoterDao;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private VoterDao voterDao;

    @Override
    public void init() {
        voterDao = new VoterDao();
    }

    public RegisterServlet() {
        super();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String dateOfBirth = request.getParameter("dob");
        String phoneNumber = request.getParameter("phone");
        String aadhaarNumber = request.getParameter("aadhar");
        String password = request.getParameter("password");
        String nationality = request.getParameter("nationality");

        if (dateOfBirth == null || dateOfBirth.trim().isEmpty()) {
            response.getWriter().println("Date of birth is required.");
            return;
        }

        Voter voter = new Voter();
        voter.setName(name);
        voter.setDateOfBirth(dateOfBirth);
        voter.setPhoneNumber(phoneNumber);
        voter.setAadhaarNumber(aadhaarNumber);
        voter.setPassword(password);
        voter.setNationality(nationality);

        try {
            if (voterDao.isAadhaarRegistered(aadhaarNumber)) {
                response.getWriter().println("Aadhaar number already registered.");
                return;
            }

            // Check if phone number is already registered
            if (voterDao.isPhoneRegistered(phoneNumber)) {
                response.getWriter().println("Phone number already registered.");
                return;
            }

            if (!voterDao.isEligible(voter)) {
                response.getWriter().println("Voter is either underage or not an Indian national.");
                return;
            }

            // Register the voter
            voterDao.registerVoter(voter);

            // Retrieve the generated Voter ID from the database (assuming VoterDao registers and returns the ID)
            String voterId = voterDao.getVoterIdByAadhaar(aadhaarNumber); // Add this method in your DAO to get the generated voterId

            // Pass voterId to the success page
            request.setAttribute("voterId", voterId);
            request.getRequestDispatcher("registration_success.jsp").forward(request, response);

        } catch (SQLException e) {
            e.printStackTrace();
            response.getWriter().println("Database error: " + e.getMessage());
        }
    }
}

package Web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Login;
import Dao.LoginDao;

/**
 * Servlet implementation class loginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    private LoginDao loginDao;
    
    public void init() {
        loginDao = new LoginDao();
    }
	
	 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        String username = request.getParameter("username");
	        String password = request.getParameter("password");
	        
	        Login login = new Login();
	        login.setUsername(username);
	        login.setPassword(password);
	        
	        try {
	            if (LoginDao.validate(login)) {
	                response.sendRedirect("list"); 
	            } else {
	                HttpSession session = request.getSession();
	                session.setAttribute("errorMessage", "Incorrect username/password."); 
	                response.sendRedirect("login.jsp"); 
	            }
	        } catch (ClassNotFoundException e) {
	            e.printStackTrace();
	        }
	    }
}

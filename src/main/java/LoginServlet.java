import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "LoginServlet", urlPatterns = "/login")
public class LoginServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/login.jsp").forward(request, response);
        HttpSession session = request.getSession();
        String user = (String) session.getAttribute("user");

        if (user != null){
            response.sendRedirect("/profile");
        } else {
            request.getRequestDispatcher("/WEB-INF/partial/login.jsp").forward(request, response);
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        boolean validAttempt = (username.equals("admin") ||  username.equals("user"))&& password.equals("password");

        HttpSession session = request.getSession();//gets our current session

        if (validAttempt && username.equals("admin")) {
            // Admin Path - the person who logged in is an admin
            session.setAttribute("isAdmin", true);
            response.sendRedirect("/profile"); //linked to your admin profile
        } else if (validAttempt && username.equals("user")){// d up to some servlet <--pattern
            session.setAttribute("IsAdmin", false);
            response.sendRedirect("/profile");
        } else {
            response.sendRedirect("/login");
        }
    }
}

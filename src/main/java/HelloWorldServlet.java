import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "HelloWorldServlet", urlPatterns = "/hello")
public class HelloWorldServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

//        this was taken directly from the DadJokeServlet from lecture
        String name = req.getParameter("name");
        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();

        out.println("<h1>Hello, " + name + ". Welcome to the World!</h1>");
    }
}


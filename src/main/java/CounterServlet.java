import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "CounterServlet", urlPatterns = "/counter")
public class CounterServlet extends HttpServlet {
    int counter = 0;
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

     resp.setContentType("text/html");
        String content = "<h1>My Awesome Portfolio</h1>";
        content += "<p>welcome to my page!</p>";
        content += "<a href='/resume'>My Resume</a>";
        String reset = req.getParameter("reset");

        PrintWriter out = resp.getWriter();

        if(reset != null) {
            counter = 0;
        }
        counter = counter +1;
        out.println(content);

        out.println("<h1>This page has been visited a total of " + counter + " times!</h1>");
    }
}


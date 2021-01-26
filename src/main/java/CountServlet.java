import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;


//1. Ping /count
//2. When someone pings that url add 1 to the counter
//3 if I need to keep track of a count - i need a global counter variable = 0
//4. check to see if a parameter to reset exists
//5. if a reset variable exists, reset the counter to 1
//6. if not, add 1 to the counter
//7. print final count



@WebServlet(name = "CountServlet", urlPatterns = "/count")
public class CountServlet extends HttpServlet {
    // set counter
    private int counter = 0;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        String reset = request.getParameter("reset");

        PrintWriter out = response.getWriter();

        if(reset != null){
            // if the reset parameter exists reset the count to 1
            counter = 0;
        }
        counter +=1;

        out.println("<h1>The count is: " + counter + "</h1>");

    }
}
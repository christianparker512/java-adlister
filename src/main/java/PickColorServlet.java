import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name="PickColorServlet", urlPatterns ="/pickcolor")
public class PickColorServlet extends HttpServlet {
    protected void doGet(HttpServletRequest req, HttpServletResponse res){
        req.getRequestDispatcher("/color-app/pickcolor.jsp").forward(req,res);

    }
}

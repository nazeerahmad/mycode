import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class RegisAction extends HttpServlet {

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      String uid = req.getParameter("uid");
      String pass = req.getParameter("pass");
      String msg = db.Admin.addUser(uid, pass);
      req.setAttribute("msg", msg);
      if(msg.startsWith("Sorry"))
          req.getRequestDispatcher("SignUp.jsp").forward(req, resp);
      else
          req.getRequestDispatcher("Registration.jsp").forward(req, resp);
    }
  
}

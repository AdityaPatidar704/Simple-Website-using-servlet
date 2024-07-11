package Login;
import java.sql.*;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Login1 extends HttpServlet {
    public void doGet(HttpServletRequest request,HttpServletResponse response) throws IOException,ServletException
    {
        PrintWriter out=response.getWriter();
        String Ccode=request.getParameter("Ccode");
        String password=request.getParameter("Password");
     try{
         Class.forName("com.mysql.jdbc.Driver");
         Connection con=DriverManager.getConnection("jdbc:mysql://localhost/clonetype","root","1234");
         String sql="select * from login1 where computer_code=? and password=?";
         PreparedStatement ps=con.prepareStatement(sql);
         ps.setString(1,Ccode);
         ps.setString(2,password);
         HttpSession session=request.getSession();
         ResultSet rs=ps.executeQuery();
         boolean b=rs.next();
         if(b)
         {
             session.setAttribute("id",Ccode);
             session.setAttribute("password",password);
             response.sendRedirect("Main.jsp");
         }
     }
     catch(Exception e)
     {
         out.println("sorry");
     }
}
    }
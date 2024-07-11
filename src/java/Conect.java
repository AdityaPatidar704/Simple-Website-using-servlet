import javax.servlet.*;
import javax.servlet.ServletContextListener;
import java.sql.*;
import javax.servlet.ServletContext;
public class Conect implements ServletContextListener {
    Connection con;
    public void contextInitialized(ServletContextEvent sce) throws UnsupportedOperationException{
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost/clonetype","root","1234");
            ServletContext sc=sce.getServletContext();
            sc.setAttribute("connect",con);
            System.out.println("done");
        }
        catch(Exception e){
            System.out.println("sorry");
    }
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
}

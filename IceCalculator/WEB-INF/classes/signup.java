import net.ucanaccess.jdbc.UcanaccessSQLException;
import javax.servlet.http.*;
import java.sql.*;
import java.io.*;
import javax.servlet.*;

public class signup extends HttpServlet{
    public void doPost(HttpServletRequest req, HttpServletResponse res)throws IOException{
        try {
            Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
        } 
        catch (ClassNotFoundException e) {
            System.out.println("Errore: Impossibile caricare il Driver Ucanaccess");
    }

    try {   
        Connection connection = DriverManager.getConnection("jdbc:ucanaccess://" + req.getServletContext().getRealPath("/") + "credenziali.accdb");
        String  nome=req.getParameter("nome");
        String cognome=req.getParameter("cognome");
        String username=req.getParameter("username");
        String password=req.getParameter("password");
        //res.getOutputStream().println(password);
        
        String query="INSERT INTO credenziali(Username,Password,Nome,Cognome) values  ('"+username+"','"+password+"','"+nome+"','"+cognome+"');";
        //res.getOutputStream().println(query);
        Statement statement = connection.createStatement();
        statement.executeUpdate(query);
        res.sendRedirect(req.getContextPath()+"/index.jsp?signup=true");

  
    }
    catch(UcanaccessSQLException l){
       res.sendRedirect(req.getContextPath()+"/signup.jsp?errore=true");
    }
        
    catch(Exception e){
    System.out.println("Errore:Impossibile connettersi al db");
    }
   }
}
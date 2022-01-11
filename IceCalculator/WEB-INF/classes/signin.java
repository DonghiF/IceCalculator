 
import javax.servlet.http.*;
import java.sql.*;

public class signin extends HttpServlet{
    public void doGet(HttpServletRequest req, HttpServletResponse res){
     try {
            Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
        } 
        catch (ClassNotFoundException e) {
            System.out.println("Errore: Impossibile caricare il Driver Ucanaccess");
    }
    try { 
        Connection connection = DriverManager.getConnection("jdbc:ucanaccess://" + req.getServletContext().getRealPath("/") + "credenziali.accdb");
        res.getOutputStream().println("tutto ok");
    }
    catch(Exception e){
        System.out.println("Errore:Impossibile connettersi al db");
    }
    
    }
}
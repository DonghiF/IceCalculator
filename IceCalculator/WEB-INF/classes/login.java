 
import javax.servlet.http.*;
import java.sql.*;

public class login extends HttpServlet{
    public void doPost(HttpServletRequest req, HttpServletResponse res){
     try {
            Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
        } 
        catch (ClassNotFoundException e) {
            System.out.println("Errore: Impossibile caricare il Driver Ucanaccess");
    }
    try { 
        Connection connection = DriverManager.getConnection("jdbc:ucanaccess://" + req.getServletContext().getRealPath("/") + "credenziali.accdb");
        String username=req.getParameter("username");
        String password=req.getParameter("password");
        //res.getOutputStream().println(password);
        
        String query="SELECT Nome FROM credenziali WHERE username='" + username + "' AND password='" + password +"'";
        //res.getOutputStream().println(query);
        Statement statement = connection.createStatement();
        ResultSet resultSet = statement.executeQuery(query);
        
        String nome=null;
        
        if(resultSet.next()) {
            nome= resultSet.getString(1);
        }
        if(nome !=null)
            res.getOutputStream().println("Benvenuto " + nome);
        else
         res.getOutputStream().println("Questo utente non e' stato trovato");
    }
    catch(Exception e){
        System.out.println("Errore:Impossibile connettersi al db");
    }
    

    
    }
}
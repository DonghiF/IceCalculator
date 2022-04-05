import javax.servlet.http.*;
import java.sql.*;
import java.io.*;
import javax.servlet.*;

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
        
        HttpSession session=req.getSession();
        
        if(resultSet.next()) {
            nome= resultSet.getString(1);
        }
        if(nome !=null){
            session.setAttribute("nome",nome);
            res.sendRedirect(req.getContextPath()+"/home.jsp");
        }
        else
         res.getOutputStream().println("Questo utente non e' stato trovato");
    }
    catch(Exception e){
        System.out.println("Errore:Impossibile connettersi al db");
    }
    

    
    }
}
import javax.servlet.http.*;
import java.sql.*;
import java.io.*;
import javax.servlet.*;

public class calculate extends HttpServlet{
    public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException{
        Connection connection = null;
        try {
            Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
        } 
        catch (ClassNotFoundException e) {
            System.out.println("Errore: Impossibile caricare il Driver Ucanaccess");
    }
    try { 
        connection = DriverManager.getConnection("jdbc:ucanaccess://" + req.getServletContext().getRealPath("/") + "credenziali.accdb");
        String element=req.getParameter("element");
        int level=Integer.parseInt(req.getParameter("level"));
        int goe=Integer.parseInt(req.getParameter("goe"));
        HttpSession session=req.getSession();
        
        int valore=0;
        if(element.equals("axel")){
            if(level==1){
                valore = 5 + goe;}
            else if(level==2){
                valore = 6 + goe;}
            else if(level==3){
                valore = 7 + goe;}
            else if(level==4){
                valore = 8 + goe;}
        }
         if(element.equals("salcow")){
            if(level==1){
                valore = 6 + goe;}
            else if(level==2){
                valore = 7 + goe;}
            else if(level==3){
                valore = 8 + goe;}
            else if(level==4){
                valore = 9 + goe;}
        }
            if(element.equals("toeloop")){
            if(level==1){
                valore = 7 + goe;}
            else if(level==2){
                valore = 8 + goe;}
            else if(level==3){
                valore = 9 + goe;}
            else if(level==4){
                valore = 10 + goe;}
        }
            if(element.equals("loop")){
            if(level==1){
                valore = 8 + goe;}
            else if(level==2){
                valore = 9 + goe;}
            else if(level==3){
                valore = 10 + goe;}
            else if(level==4){
                valore = 11 + goe;}
        }
            if(element.equals("flip")){
            if(level==1){
                valore = 9 + goe;}
            else if(level==2){
                valore = 10 + goe;}
            else if(level==3){
                valore = 11 + goe;}
            else if(level==4){
                valore = 12 + goe;}
        }
            if(element.equals("lutz")){
            if(level==1){
                valore = 10 + goe;}
            else if(level==2){
                valore = 11 + goe;}
            else if(level==3){
                valore = 12 + goe;}
            else if(level==4){
                valore = 13 + goe;}
        }
            if(element.equals("CoSp")){
            if(level==1){
                valore = 7 + goe;}
            else if(level==2){
                valore = 8 + goe;}
            else if(level==3){
                valore = 9 + goe;}
            else if(level==4){
                valore = 10 + goe;}
        }
            if(element.equals("FSp")){
            if(level==1){
                valore = 8 + goe;}
            else if(level==2){
                valore = 9 + goe;}
            else if(level==3){
                valore = 10 + goe;}
            else if(level==4){
                valore = 11 + goe;}
        }
            if(element.equals("SSp")){
            if(level==1){
                valore = 5 + goe;}
            else if(level==2){
                valore = 6 + goe;}
            else if(level==3){
                valore = 7 + goe;}
            else if(level==4){
                valore = 8 + goe;}
        }
            if(element.equals("FCoSp")){
            if(level==1){
                valore = 10 + goe;}
            else if(level==2){
                valore = 11 + goe;}
            else if(level==3){
                valore = 12 + goe;}
            else if(level==4){
                valore = 13 + goe;}
        }
            if(element.equals("StSq")){
            if(level==1){
                valore = 9 + goe;}
            else if(level==2){
                valore = 10 + goe;}
            else if(level==3){
                valore = 11 + goe;}
            else if(level==4){
                valore = 12 + goe;}
        }
        String query="INSERT into elementi(Username, Elemento, Livello, Goe, Valore) values ('"+session.getAttribute("username")+"','"+ element + "','"+ level + "','"+ goe+ "','" + valore +"');";
        //res.getOutputStream().println(query);
        Statement statement = connection.createStatement();
        statement.executeUpdate(query);
        session.setAttribute("valore", valore);
        res.sendRedirect(req.getContextPath()+"/calculator.jsp");
    }
    catch(Exception e){
        System.out.println("Errore:Impossibile connettersi al db");
        System.out.println(e);
    }
    }
}
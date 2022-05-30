<html>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
  <head>
    <title>calculator</title>
   <titolo style="font-size:2vw;"> <strong> IceCalculator </strong></titolo>
  </head>
  <body style='font-size:1.2vw;'>
  <p>
  
  <form method="post" action="/IceCalculator/calculate">
  <label for="element">Risultato: </label>
 
	<%
String DRIVER = "net.ucanaccess.jdbc.UcanaccessDriver";
                Connection connection=null;

                try{
                    Class.forName(DRIVER);
                }catch (ClassNotFoundException e) {
                    out.println("Errore nel caricare il Driver Ucanaccess.");
                }
                try{
                    connection = DriverManager.getConnection("jdbc:ucanaccess://" + request.getServletContext().getRealPath("/") + "credenziali.accdb");

                            String query = "SELECT SUM(Valore) FROM elementi WHERE Username='"+session.getAttribute("username")+"'"; 
                            Statement st = connection.createStatement();
                            ResultSet result = st.executeQuery(query);

                            while(result.next()){
                               out.println(result.getString(1) + ",");
							   out.println("<br>");
                    }
                }
				catch(Exception e){
                    out.println(e);
                }

                finally{
                    if(connection != null){
                        try{
                            connection.close();
                        }catch(Exception e){
                            out.println("La connessione non è stata chiusa correttamente...");
                        }
                    }
                }
            %>
	 	 <br> <br>
	 <button type="button" onclick="location.replace('http://localhost:8080/IceCalculator/calculator.jsp')">Torna al calcolatore</button> 
  </body>
</html>
<html>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
  <head>
    <title>calculator</title>
   <titolo style="font-size:2vw;"> <strong> IceCalculator </strong></titolo>
   <br><sottotitolo><strong>Calcola il tuo punteggio</strong></sottotitolo>
  </head>
  <body style='font-size:1.2vw;'>
  <p>
  
  <form method="post" action="/IceCalculator/calculate">
  <label for="element">Seleziona un elemento: </label>
  <select name="element" id="element">
    <option value="axel">Axel</option>
    <option value="salcow">Salcow</option>
    <option value="toeloop">Toeloop</option>
    <option value="loop">Loop</option>
	<option value="flip">Flip</option>
	<option value="lutz">Lutz</option>
	<option value="CoSp">Combo Spin</option>
	<option value="FSp">Flying Spin</option>
	<option value="SSp">Seat Spin</option>
	<option value="FCoSp">Flying Combo Spin</option>
	<option value="StSq">Step Sequence</option>
  </select>
		
		<br><br>
  <label for="level">Seleziona il livello: </label>
  <select name="level" id="level">
    <option value="1">Primo</option>
    <option value="2">Secondo</option>
    <option value="3">Terzo</option>
    <option value="4">Quarto</option>
	</select>
	  <br><br>
  <label for="goe">Seleziona il GOE: </label>
  <select name="goe" id="goe">
    <option value="-5">-5</option>
    <option value="-4">-4</option>
    <option value="-3">-3</option>
    <option value="-2">-2</option>
	<option value="-1">-1</option>
	<option value="0">0</option>
	<option value="1">+1</option>
	<option value="2">+2</option>
	<option value="3">+3</option>
	<option value="4">+4</option>
	<option value="5">+5</option>
  </select>
  <br><br>
 <input type="submit" value="Aggiungi elemento"/>
 <br><br>
 </form>
  </p>
  <p>
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

                            String query = "SELECT * FROM elementi WHERE Username='"+session.getAttribute("username")+"'"; 
                            Statement st = connection.createStatement();
                            ResultSet result = st.executeQuery(query);

                            while(result.next()){
                               out.println("elemento: " + result.getString(3) + ",");
							   out.println(" valore: " +result.getString(6));
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
                            out.println("La connessione non ?? stata chiusa correttamente...");
                        }
                    }
                }
            %>

  </p>

	 <button type="button" onclick="location.replace('http://localhost:8080/IceCalculator/result.jsp')">Calcola</button>
	 <button type="button" onclick="location.replace('http://localhost:8080/IceCalculator/home.jsp')">Torna alla home</button>
	 
  </body>
</html>
<!DOCTYPE HTML>
<html>
  <head>
    <title>login</title>
   <titolo style="font-size:2vw;"> <strong> IceCalculator </strong></titolo>
	<% 
	out.println("<p style='font-size:1.5vw;text-decoration: underline;'>benvenuto "+session.getAttribute("nome")+" </p>");
	%>
  </head>
  <body style='font-size:1.2vw;'>
 

	<!--<p>Visualizza i punteggi che ho salvato</p>
	 <button type="button" onclick="location.replace('http://localhost:8080/IceCalculator/myscores.jsp')">I miei punteggi</button>
	 <br>--> <br>
	 <p>Calcola il tuo punteggio: <button type="button" onclick="location.replace('http://localhost:8080/IceCalculator/calculator.jsp')">Calcolatore</button></p>
	 
	 
	 
  </body>
</html>
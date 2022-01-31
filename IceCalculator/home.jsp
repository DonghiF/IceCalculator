<!DOCTYPE HTML>
<html>
  <head>
    <title>login</title>
   <titolo style="font-size:2vw;"> <strong> IceCalculator </strong></titolo>
  </head>
  <body style='font-size:1vw;'>
  
	<% 
	out.println("<p style='font-size:1.5vw;text-decoration: underline;'>benvenuto "+session.getAttribute("nome")+" </p>");
	%>
	<br> <br> <br>
	<p>Visualizza i punteggi che ho salvato</p>
	 <button type="button" onclick="location.replace('http://localhost:8081/IceCalculator/myscores.jsp')">I miei punteggi</button>
	 <br> <br>
	 <p>Calcola un nuovo punteggio da zero</p>
	 <button type="button" onclick="location.replace('http://localhost:8081/IceCalculator/calculator.jsp')">Calcolatore</button>
	 
	 
  </body>
</html>
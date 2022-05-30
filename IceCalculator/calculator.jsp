<!DOCTYPE HTML>
<html>
  <head>
    <title>calculator</title>
   <titolo style="font-size:2vw;"> <strong> IceCalculator </strong></titolo>
   <br><sottotitolo><strong>Calcola il tuo punteggio</strong></sottotitolo>
  </head>
  <body style='font-size:1vw;'>
  <p>
  
  <form action="/calculate">
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
		
		<br>
  <label for="level">Seleziona il livello: </label>
  <select name="level" id="level">
    <option value="primo">Primo</option>
    <option value="secondo">Secondo</option>
    <option value="terzo">Terzo</option>
    <option value="quarto">Quarto</option>
	</select>
	  <br>
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
  <br>
 <input type="submit" value="Aggiungi elemento"/>
 </form>
  </p>
  <p>


  </p>
	<br> <br>

	 <button type="button" onclick="location.replace('http://localhost:8081/IceCalculator/punteggio.jsp')">Calcola</button>
	 
	 
  </body>
</html>
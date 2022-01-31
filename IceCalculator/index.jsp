<!DOCTYPE HTML>
<html>
  <head>
    <title>login</title>
   <titolo style="font-size:2vw;"> <strong>IceCalculator</strong></titolo>
  </head>
  <body>
  <br><br>
	<%
	String arrivo = request.getParameter("signin");
	try{
		if(arrivo==null)
			arrivo="false";
	if(arrivo.equals("true")){
		out.println("<p>Utente creato correttamente. Esegui il login</p>");
		
	}
	}
	catch(Exception e){
	out.println(e);
	}
	%>
    <form action="/IceCalculator/login/" method="post" id="form">
      <input type="hidden" name="field" id="field" value="0" onchange="setValue(this)">
      <label>Username: </label>
      <input type="text" name="username" onchange="setValue(this)">
      <label>Password: </label>
      <input type="password" name="password" onchange="setValue(this)">
	  <hr>
	  <button type="submit">Login</button>
    </form>
	 <br><a href="signin.jsp">Se non ti sei ancora iscritto, clicca qui!</a>
  </body>
</html>
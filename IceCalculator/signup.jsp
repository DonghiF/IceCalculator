<!DOCTYPE HTML>
<html>
  <head>
    <title>sign-up</title>
   <titolo style="font-size:2vw;"> <strong>IceCalculator</strong></titolo>
  </head>
  <body>
  <br><br>
	<%
	String errore = request.getParameter("errore");
	try{
		if(errore==null)
			errore="false";
	if(errore.equals("true")){
		out.println("<script> window.alert ('Username gi\u00E0 in uso. Prova a cambiarlo') </script>");
		
	}
	}
	catch(Exception e){
	out.println(e);
	}
	%>
    <form action="/IceCalculator/signup/" method="post" id="form">
      <input type="hidden" name="field" id="field" value="0" onchange="setValue(this)">
      <label>Nome: </label>
      <input type="text" name="nome" onchange="setValue(this)">
	  <label>Cognome: </label>
      <input type="text" name="cognome" onchange="setValue(this)">
	  <br><br>
	  <label>Username: </label>
      <input type="text" name="username" onchange="setValue(this)">
      <label>Password: </label>
      <input type="password" name="password" onchange="setValue(this)">
	  
	  <hr>
	  <button type="submit">Sign-up</button>
	  <br><br><a href="index.jsp">Torna al login</a>

	  
    </form>
  </body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Animais Perdidos</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
	<link rel="stylesheet" href="navbar.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
</head>
<style> 
	input[type=text] {
	  width: 200px;
	  box-sizing: border-box;
	  border: 2px solid #ccc;
	  border-radius: 4px;
	  font-size: 16px;
	  background-color: white;
	  background-image: url('searchicon.png');
	  background-position: 10px 10px; 
	  background-repeat: no-repeat;
	  padding: 12px 20px 12px 40px;
	  -webkit-transition: width 0.4s ease-in-out;
	  transition: width 0.4s ease-in-out;
	}
	
	input[type=text]:focus {
	  width: 70%;
	}
</style>
<body>
	<br><br><br><br><br>
	
	<!-- Navbar (sticky top) -->
		<div class="w3-top w3-hide-small">
			<div class="w3-bar w3-white w3-center w3-padding w3-opacity-min w3-hover-opacity-off">
				<a href="AP_Home.jsp" style="width:20%" class="w3-bar-item w3-button"><b>Início</b></a>
				<a href="AP_Adocao.jsp" style="width:20%" class="w3-bar-item w3-button"><b>Anúncios de adocões</b></a>
				<a href="AP_Perdidos.jsp" style="width:20%" class="w3-bar-item w3-button"><b>Anúncios de animais perdidos</b></a>
				<a href="quiz.html" style="width:20%" class="w3-bar-item w3-button"><b>Quiz</b></a>
				<a href="index.jsp" style="width:20%" class="w3-bar-item w3-button"><b>Login/Registo</b></a>
			</div>
		</div>

	<section class="py-2 text-center container">
    	<div class="row py-lg-5">
        	<div class="col-lg-6 col-md-8 mx-auto">
                <h1 class="fw-light">Animais Perdidos</h1>
                <p class="lead text-muted"> Nesta página pode procurar por vários animais dados como perdidos em Portugal e que foram aqui anunciados. 
                Para ver mais detalhes sobre um animal, basta clicar em 'Mais detalhes' por baixo da imagem.</p>
                <p>
                  <a href="InscreverPerdido.html" class="btn btn-primary my-2">Criar um anúncio</a>
                  <!-- <a href="#" class="btn btn-secondary my-2">Secondary action</a> 
                    	<form action="AP_Perdidos.jsp" method="post">
  							<input id="procurar" type="text" name="search" placeholder="Procurar por tipo ...">
  							<button type="button" class="btn btn-sm btn-outline-secondary">Procurar</button>					
						</form>         -->
            </div>
       	</div>
  	</section>
  	
  	<div class="album py-5 bg-light">
    	<div class="container">
			<div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
	<%
		Class.forName("com.mysql.jdbc.Driver");
		ResultSet rs = null;
		try {
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/amigospatudos", "root", "lusofona");
			Statement stmt = conn.createStatement();
			String str = "SELECT * FROM Perdido";	
			ResultSet rset = stmt.executeQuery(str);
		
		while (rset.next() ){	
	%>
                <div class="col">
                  <div class="card shadow-sm">
                    <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" 
                    role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder
                    </title><rect width="100%" height="100%" fill="#55595c"/><text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>
        			<div class="card-body">
                      <p class="card-text"><%= rset.getString("tipo") %> / <%= rset.getString("cidade") %></p>
                      <div class="d-flex justify-content-between align-items-center">
                        <div class="btn-group">
                        	<form action="MaisDetalhes.jsp?codigo=<%=rset.getInt("cod_perdido") %>" method="post">
							    <input type ="submit" class="btn btn-sm btn-outline-secondary" value="Mais Detalhes">
							</form>
                        </div>
                        <small class="text-muted"><%= rset.getString("data_found") %></small>
                      </div>
                    </div>
                  </div>
                </div>	
	<%
		}	
		rset.close();
		stmt.close();
		conn.close();
	} catch (SQLException e){
    	e.printStackTrace();}
	%>
	
	  		</div>
      	</div>
  	</div>
</body>
</html>
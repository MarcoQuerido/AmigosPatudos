<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%><%-- ISO-8859-1--%>
<%@ page import="java.sql.*" %>
<% String codigo=request.getParameter("codigo2"); %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>Detalhes do Animal</title>
		<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
		<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
		<link rel="stylesheet" href="navbar.css">
		<link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/checkout/">
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
	
		<link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet">
		<style>
	      .bd-placeholder-img {
	        font-size: 1.125rem;
	        text-anchor: middle;
	        -webkit-user-select: none;
	        -moz-user-select: none;
	        user-select: none;
	      }
	
	      @media (min-width: 768px) {
	        .bd-placeholder-img-lg {
	          font-size: 3.5rem;
	        }
	      }  
	    </style>
    </head>
    
	<body class="bg-light">
	
	<!-- Navbar (sticky top) -->
		<div class="w3-top w3-hide-small">
			<div class="w3-bar w3-white w3-center w3-padding w3-opacity-min w3-hover-opacity-off">
				<a href="AP_Home.jsp" style="width:20%" class="w3-bar-item w3-button"><b>Inicio</b></a>
				<a href="AP_Adocao.jsp" style="width:20%" class="w3-bar-item w3-button"><b>Anuncios de adocoes</b></a>
				<a href="AP_Perdidos.jsp" style="width:20%" class="w3-bar-item w3-button"><b>Anuncios de animais perdidos</b></a>
				<a href="quiz.html" style="width:20%" class="w3-bar-item w3-button"><b>Quiz</b></a>
				<a href="index.jsp" style="width:20%" class="w3-bar-item w3-button"><b>Login/Registo</b></a>
			</div>
		</div>
		<br><br><br><br><br><br><br>
	 	<%
	 	
	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;
	 try{
	 connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/amigospatudos", "root", "lusofona");
	 statement=connection.createStatement();
	 String sql ="SELECT * FROM adocao WHERE cod_adocao="+codigo+"";	
	 resultSet = statement.executeQuery(sql);
	 while(resultSet.next()){
	 %>
	 
	 <div class="row g-5">
      <div class="col-md-5 col-lg-4 order-md-last">
        <h4 class="d-flex justify-content-between align-items-center mb-3">
          <span class="text-primary"></span>
          <div class="col-auto d-none d-lg-block">
            <svg class="bd-placeholder-img" width="400" height="250" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"/><text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>
          </div>
        </h4>
      <a href="AP_Adocao.jsp" class="btn btn-primary my-2">Voltar Atrás</a>
      </div>
      
      <div class="col-md-7 col-lg-8">
        <h4 class="mb-3">Detalhes do Animal</h4>
        <form class="needs-validation" novalidate>
          <div class="row g-3">
            <div class="col-sm-4">
              <label for="Name" class="form-label">Nome da pessoa responsável:  </label>
              <label class="form-control"> <%=resultSet.getString("nome_pessoa") %> </label>
            </div>

            <div class="col-sm-2">
              <label for="Telemovel" class="form-label">Telemóvel:  </label>
              <label class="form-control"> <%=resultSet.getString("telemovel") %> </label>
            </div>

            <div class="col-7">
              <label for="email" class="form-label">Email:</label>
              <label class="form-control"> <%=resultSet.getString("email") %> </label>
            </div>

			<div class="col-6">
              <label for="Tipo de animal" class="form-label">Raça:  </label>
              <label class="form-control"> <%=resultSet.getString("raca") %> </label>
            </div>

			<div class="col-sm-2">
              <label for="Raça" class="form-label">Idade:  </label>
              <label class="form-control"> <%=resultSet.getString("idade") %> </label>
            </div>

            <div class="col-sm-2">
              <label for="Idade" class="form-label">Cidade:  </label>
              <label class="form-control"> <%=resultSet.getString("cidade") %> </label>
            </div>
            
            <div class="col-6">
              <label for="Notas" class="form-label">Observações</label>
              <label class="form-control"> <%=resultSet.getString("notas") %> </label>
            </div>

            
		</div>
	   </form>
	  </div>
	 <% }
	 	connection.close();
	    } catch (Exception e) {
	    	e.printStackTrace();}
	 %>
	</body>
</html>
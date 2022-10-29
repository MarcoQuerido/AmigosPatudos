<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%-- Importar uma ou mais classes em JSP --%>
<%@ page import="java.sql.Connection,java.sql.DriverManager,java.sql.SQLException" %>

<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title></title>
    <link rel="stylesheet" href="style.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js" charset="utf-8"></script>
  </head>
  <body>

 

      <form action="login.jsp" class="login-form">
        <h1>Login</h1>

        <div class="txtb">
          <input type="text" id = "username" name="username">
          <span data-placeholder="Username"></span>
        </div>

        <div class="txtb">
          <input type="password" id="pw" name="pw">
          <span data-placeholder="Password"></span>
        </div>
             
        <input type="submit" class="Subbtn" value="Submeter">

        <div class="bottom-text">
          Se ainda n�o est� registado <a href="registration_form.jsp">Clique aqui.</a>
        </div>
        <br> <br> <br> <br>
        <div class="bottom-text">
       		 <a href="AP_Home.jsp" class="Subbtn" style="vertical-align: middle"> Voltar atr�s </a>    
      	</div>

      </form>
      <script type="text/javascript">
      $(".txtb input").on("focus",function(){
        $(this).addClass("focus");
      });

 

      $(".txtb input").on("blur",function(){
        if($(this).val() == "")
        $(this).removeClass("focus");
      });
      </script>
  </body>
</html>
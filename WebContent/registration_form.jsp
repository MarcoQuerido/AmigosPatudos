<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title></title>
    <link rel="stylesheet" href="style.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js" charset="utf-8"></script>
  </head>
  <body>

 

      <form action="database_registration.jsp" class="registration-form">
        <h1>Registo</h1>

 

        <div class="txtb">
          <input type="text" id="nome" name="nome">
          <span data-placeholder="Nome"></span>
        </div>

        <div class="txtb">
          <input type="text" id="sexo" name="sexo" >
          <span data-placeholder="sexo"></span>
        </div>  
        
        <div class="txtb">
          <input type="text" id="idade" name="idade">
          <span data-placeholder="Idade"></span>
        </div>     
             
         <div class="txtb">
          <input type="email" id="email" name="email">
          <span data-placeholder="E-mail"></span>
        </div>                    
                 
        <div class="txtb">
          <input type="text" id="pw" name="pw">
          <span data-placeholder="Password"></span>
        </div> 
        
        <div class="txtb">
          <input type="text" id="username" name="username">
          <span data-placeholder="Username"></span>
        </div> 
                
        <div class="txtb">
          <input type="text" id="telemovel" name="telemovel">
          <span data-placeholder="Nº de telemovel"></span>
        </div>   
        
      
      <input type="submit" class="Subbtn" value="Submeter"><br>
        <a href="index.jsp" class="Subbtn" style="text-align: center" value="Login">Login</a>
      <br><br> <br>
      <div class="bottom-text">
        <a href="AP_Home.jsp" class="Subbtn" style="vertical-align: middle"> Voltar atrás </a>    
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
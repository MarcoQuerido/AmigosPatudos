<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UFT-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
		<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
		<link rel="stylesheet" href="style_home.css">
	</head>
	
	<style>h1 { color: #ffb84a;
	  			font-family: "Times New Roman", Times, serif;
	  			font-weight: bold;
	}</style>
	
	<body>
		<br><br><br><br>
		
		<img src="https://res.cloudinary.com/dnrdrahn9/image/upload/v1619027943/AmigosPatudos2_1_vxlvs5.png" width="150px" height="150px" alt="Logo">
		<h1 style="text-align:center">Amigos Patudos</h1>


		<!-- Navbar (sticky bottom) -->
		<div class="w3-top w3-hide-small">
			<div class="w3-bar w3-white w3-center w3-padding w3-opacity-min w3-hover-opacity-off">
				<a href="AP_Home.jsp" style="width:20%" class="w3-bar-item w3-button"><b>Início</b></a>
				<a href="AP_Adocao.jsp" style="width:20%" class="w3-bar-item w3-button"><b>Anúncios de adoções</b></a>
				<a href="AP_Perdidos.jsp" style="width:20%" class="w3-bar-item w3-button"><b>Anúncios de animais perdidos</b></a>
				<a href="quiz.html" style="width:20%" class="w3-bar-item w3-button"><b>Quiz</b></a>
				<a href="index.jsp" style="width:20%" class="w3-bar-item w3-button"><b>Login/Registo</b></a>
			</div>
		</div>

		<img src="https://petcare.com.br/centroveterinario/wp-content/uploads/2013/08/gato-e-cachorro.jpg" alt="Imagem de um gato" class="center" style="width:750px;height:550px">

		<div class="w3-container w3-padding-64 w3-pale-red w3-grayscale-min" id="us">
			<div class="w3-content">
				<h1 class="w3-center w3-text-grey"><b>Quem somos</b></h1>
				<p><i>A nossa aplicação web pretende dar resposta à procura de animais para adoção, assim como dar aos utilizadores uma plataforma para anúncio de animais perdidos,
				tudo no mesmo espaço. O design simples e intuitivo permite a qualquer pessoa criar um anúncio em poucos minutos.
				<a href="sobre.html" style="font-size:90%;";><b>Mais sobre nós...</b></a></i>
				</p><br>
			</div>
		</div>
		
		<br><br><br><br><br><br><br>
		<h2 style="text-align:center">Galeria</h2>

	<div class="container">
		  <div class="mySlides fade">
		    <div class="numbertext">1 / 6</div>
		    <img src="https://www.petz.com.br/blog/wp-content/uploads/2017/04/comportamento-dos-gatos-1.jpg" style="width:60%" height="500">
		  </div>
		
		  <div class="mySlides fade">
		    <div class="numbertext">2 / 6</div>
		    <img src="https://blog.cobasi.com.br/wp-content/uploads/2020/10/cuidar-de-coelho-1024x682.png" style="width:60%" height="500">
		  </div>
		
		  <div class="mySlides fade">
		    <div class="numbertext">3 / 6</div>
		    <img src="https://1.bp.blogspot.com/-TggtqTfBdus/XbzrZIWOWTI/AAAAAAAAA3s/hUv-ceiK3j8B35_-3AZUWjTM-a3RHaerQCEwYBhgL/s1600/hormnio-feromnio-passaro-indutor-de-canto-canario-belga-D_NQ_NP_383405-MLB20868218238_082016-F.jpg" style="width:60%" height="500">
		  </div>
		    
		  <div class="mySlides fade">
		    <div class="numbertext">4 / 6</div>
		    <img src="https://goldpet.pt/modules/leoblog/views/img/b/b-principais-caracteristicas-porquinhos-india.jpg" style="width:60%" height="500">
		  </div>
		
		  <div class="mySlides fade">
		    <div class="numbertext">5 / 6</div>
		    <img src="https://www.petz.com.br/blog/wp-content/uploads/2018/05/como-cuidar-de-hamster-3.jpg" style="width:60%" height="500">
		  </div>
		    
		  <div class="mySlides fade">
		    <div class="numbertext">6 / 6</div>
		    <img src="https://meupet.elanco.com/sites/g/files/adhwdz661/files/styles/paragraph_image/public/2020-07/cao_labrador_retriever_deitado_no_parque_em_um_dia_ensolarado.jpg?itok=x6-4Q17S" style="width:60%" height="500">
		  </div>
	  </div>
    
	<br><br><br><br><br><br><br>

	  <!-- The Contact Section -->
  <div class="w3-container w3-content w3-padding-64" style="max-width:800px" id="contact">
    <h2 class="w3-wide w3-center">CONTACTE-NOS</h2>
    <p class="w3-opacity w3-center"><i>Gostou? Dê-nos o seu feedback!</i></p>
    <div class="w3-row w3-padding-32">
      <div class="w3-col m6 w3-large w3-margin-bottom">
        <i class="fa fa-map-marker" style="width:30px"></i> Porto, Portugal<br>
        <i class="fa fa-phone" style="width:30px"></i> Telemóvel: +351 912345678<br>
        <i class="fa fa-envelope" style="width:30px"> </i> Email: amigospatudos@gmail.com<br>
      </div>
      <div class="w3-col m6">
        <form action="/action_page.php" target="_blank">
          <div class="w3-row-padding" style="margin:0 -16px 8px -16px">
            <div class="w3-half">
              <input class="w3-input w3-border" type="text" placeholder="Name" required name="Name">
            </div>
            <div class="w3-half">
              <input class="w3-input w3-border" type="text" placeholder="Email" required name="Email">
            </div>
          </div>
          <input class="w3-input w3-border" type="text" placeholder="Message" required name="Message">
          <button class="w3-button w3-black w3-section w3-right" type="submit">ENVIAR</button>
        </form>
      </div>
    </div>
  </div>
  	
	<script>
	 // Automatic Slideshow - change image every 3 seconds
	var myIndex = 0;
	carousel();
	
	function carousel() {
	  var i;
	  var x = document.getElementsByClassName("mySlides");
	  for (i = 0; i < x.length; i++) {
	    x[i].style.display = "none";
	  }
	  myIndex++;
	  if (myIndex > x.length) {myIndex = 1}
	  x[myIndex-1].style.display = "block";
	  setTimeout(carousel, 3000);
	}
	</script>	
		
</body>
</html>
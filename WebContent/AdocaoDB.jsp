<%@ page import="java.sql.*" %>
<%
	String nome = request.getParameter("nome_pessoa");
	String telemovel = request.getParameter("telemovel");
	String email = request.getParameter("email");
	String tipo = request.getParameter("animal");
	String raca = request.getParameter("raca");
	String idade = request.getParameter("idade");
	String cidade = request.getParameter("cidade");
	//String imagem = request.getParameter("imagem_animal");
	String info = request.getParameter("notas");
	
	try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/amigospatudos", "root", "lusofona");
	Statement stat = con.createStatement();
	int i = stat.executeUpdate("INSERT INTO Adocao(nome_pessoa,telemovel,email,animal,raca,idade,cidade,notas) VALUES ('"
	+ nome + "','" + telemovel + "','" + email + "','" + tipo + "','" + raca + "','" + idade + "','" + cidade + "','" + info + "')");
	
	if (i > 0) {
	out.println("<br><br><br><center><h2>Registo do animal bem sucedido</h2></center>");
	%>
	<script>
	setTimeout(function(){
	window.location.href = 'AP_Adocao.jsp';
	}, 2000);
	</script>
	<%
	} else {
	response.sendRedirect("AP_Adocao.jsp");
	}
	} catch (SQLException e) {e.printStackTrace();}
%>
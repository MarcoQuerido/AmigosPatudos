<%@ page import="java.sql.*" %>
<%
	String dono = request.getParameter("dono");
	String telemovel = request.getParameter("telemovel");
	String email = request.getParameter("email");
	String tipo = request.getParameter("tipo");
	String nome_animal = request.getParameter("nome_animal");
	String cor = request.getParameter("cor");
	//String imagem = request.getParameter("imagem_animal");
	String cidade = request.getParameter("cidade");
	String info = request.getParameter("notas");	
	try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/amigospatudos", "root", "lusofona");
	Statement stat = con.createStatement();
	int i = stat.executeUpdate("INSERT INTO Perdido(dono,telemovel,email,tipo,nome_animal,cor,cidade,notas) VALUES ('"
	+ dono + "','" + telemovel + "','" + email + "','" + tipo + "','" + nome_animal + "','" + cor + "','" + cidade + "','" + info + "')");
	
	if (i > 0) {
	out.println("<br><br><br><center><h2>Registo do animal bem sucedido</h2></center>");
	%>
	<script>
	setTimeout(function(){
	window.location.href = 'AP_Perdidos.jsp';
	}, 2000);
	</script>
	<%
	} else {
	response.sendRedirect("AP_Perdidos.jsp");
	}
	} catch (SQLException e) {e.printStackTrace();}
%>
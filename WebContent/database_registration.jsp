<%@ page import="java.sql.*" %>
<%
    String nome = request.getParameter("nome");
    String sexo = request.getParameter("sexo");
    String idade = request.getParameter("idade");
    String user = request.getParameter("username");    
    String pwd = request.getParameter("pw");
    String telemovel = request.getParameter("telemovel");    
    String mail = request.getParameter("email");
    try{
    	//Class.forName("com.mysql.jdbc.Driver");
    	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/amigospatudos", "root", "lusofona");
    	Statement stat = con.createStatement();
    	int i = stat.executeUpdate("INSERT INTO Pessoa(nome, sexo, idade, username, pw, telemovel, email) VALUES ('" + nome + "','" + sexo + "','" + idade + "','" + user + "','" + pwd + "','" + telemovel + "','" + mail + "')");
    	if (i > 0) {
        	session.setAttribute("id", user);
        	out.println("<h2>Registo bem sucedido</h2>");
        	out.print("<a href='AP_Home.jsp'>Entrar na aplicação</a>");
    	} else {
    		response.sendRedirect("index.jsp");
    	}
    } catch (SQLException e) {e.printStackTrace();}
%>
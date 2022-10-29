<%@ page import="java.sql.*" %>
<%
	String user = request.getParameter("username");
	String pwd = request.getParameter("pw");
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/amigospatudos", "root", "lusofona");
		Statement stat = con.createStatement();
		ResultSet rset;
		// check user
		rset = stat.executeQuery("select * from Pessoa where username='" + user + "' and pw='" + pwd + "'");
		if (rset.next()){
			session.setAttribute("username", user);
			out.println("<h2>"+"Bem vindo ao AmigosPatudos: "+ user + "</h2>");
			out.println("<a href='AP_Home.jsp'>Entrar na aplicação</a>");
			//response.sendRedirect()
	
		} else {
			out.println("<h2>"+"Username ou password inválidos"+"</h2>");
			out.println("<a href='index.jsp'> Tente outra vez ... </a>");
		}
	} catch (SQLException e) {
		System.out.println("Erro");
    	e.printStackTrace();}
%>
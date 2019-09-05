<%@page import="java.sql.DriverManager"%> <%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%> <%@page import="java.sql.Connection"%>

<body>
  <% String driverName = "com.mysql.jdbc.Driver"; String connectionUrl =
  "jdbc:mysql://localhost:3306/"; String dbName = "test"; String userId =
  "root"; String password = "hritik@123"; String
  user=request.getParameter("userid"); String
  pwd=request.getParameter("password"); String
  fname=request.getParameter("fname"); String
  lname=request.getParameter("lname"); String
  email=request.getParameter("email"); try { Class.forName(driverName); } catch
  (ClassNotFoundException e) { e.printStackTrace(); } Connection connection =
  null; Statement statement = null; ResultSet resultSet = null; try{ connection
  = DriverManager.getConnection(connectionUrl + dbName, userId, password);
  statement = connection.createStatement(); statement.executeUpdate("insert into
  users(userid,password,fname,lname,email) values
  ('"+user+"','"+pwd+"','"+fname+"','"+lname+"','"+email+"')");
  out.println("Registered"); }catch (Exception e) { out.println("dkwbjd");
  e.printStackTrace(); } %>
  <!-- <form action="register.jsp" method="post">
	User name :<input type="text" name="userid" /><br /><br />
	password :<input type="password" name="password" /><br /><br />
	First name :<input type="text" name="fname" /><br /><br />
	Last name :<input type="text" name="lname" /><br /><br />
	Email :<input type="text" name="email" /><br /><br />
	<br /><br />
	<input type="submit" />
</form> -->
  <!-- <% String driverName = "com.mysql.jdbc.Driver"; String connectionUrl =
  "jdbc:mysql://localhost:3306/"; String dbName = "test"; String userId =
  "root"; String password = "hritik@123"; String
  user=request.getParameter("userid"); String
  pwd=request.getParameter("password"); String
  fname=request.getParameter("fname"); String
  lname=request.getParameter("lname"); String
  email=request.getParameter("email"); try { Class.forName(driverName); } catch
  (ClassNotFoundException e) { e.printStackTrace(); } Connection connection =
  null; Statement statement = null; ResultSet resultSet = null; try{ connection
  = DriverManager.getConnection(connectionUrl + dbName, userId, password);
  statement = connection.createStatement(); statement.executeUpdate("insert into
  users(userid,password,fname,lname,email) values
  ('"+user+"','"+pwd+"','"+fname+"','"+lname+"','"+email+"')");
  out.println("Registered"); }catch (Exception e) { out.println("dkwbjd");
  e.printStackTrace(); } %> -->
</body>

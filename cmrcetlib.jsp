<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> CMRCET LIBRARY</title>
    <style>
        body{
            background-color: black;
            color: rgb(240, 6, 6);
        }
    </style>
</head>
<body>
    <form action="booksdata.jsp" method="POST"> 
        <center>
            <%
            String xname=request.getParameter("myid");
            String pass=request.getParameter("pass");
            session.setAttribute("id", xname);
            Connection con = null;
                Statement st = null;
            try{
            Class.forName("com.mysql.cj.jdbc.Driver");
             con=DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","koushiknarla30");
              st=con.createStatement();
              ResultSet rs = st.executeQuery("SELECT * FROM userlogindata WHERE uname='" + xname + "'");
              if(rs.next()){
                response.sendRedirect("booksdata.jsp");
              }
              else {
                out.println("<p>invalid Username or Password</p>");

              }
            }
            catch(Exception e){
                out.println(e);
            }
            
            %>
        </center>
     </form>  
</body>
</html>
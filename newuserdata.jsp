<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>successful</title>
    <style>
        body {
  background-color: black;
  color: white;
  font-family: Arial, sans-serif;
  font-size: 16px;
}

button {
  padding: 10px;
  border: none;
  background-color: #4CAF50;
  color: white;
  cursor: pointer;
}

    </style>
</head>
<body>
    <center>
        <% 
            String name = request.getParameter("myname");
            String password = request.getParameter("pass");
            String rpassword= request.getParameter("repass");
            
            
            if (rpassword.equals(password)) {
                Connection con = null;
                Statement st = null;
                try{
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/library", "root", "koushiknarla30");
                    st = con.createStatement();
                    String str= "INSERT INTO userlogindata(uname,pass) VALUES('"+name+"','"+password+"')";
                    st.executeUpdate(str);
                    out.println("<p>SignUp successful!</p>");
                    

                }catch(Exception e)
                {
                   out.println(e);
                }  
            } else {
                out.println("<p>Check password</p>");
            }
        %>
       <br>
        <button onclick="location.href='ulogin.jsp'">User Login</button>

    </center>
</body>
</html>

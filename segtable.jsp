<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BOOK SUGGESTED</title>
    <style>
        body{
            background-color: #f1f1f1;
            font-weight:bold ;
            font-family: Verdana, Geneva, sans-serif;
        }
        
    </style>
</head>
<body>
    <center>
        <%
        String segname=request.getParameter("segg");
        Connection con=null;
        Statement st=null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","koushiknarla30");
            st=con.createStatement();
            String str="INSERT INTO segbook VALUES('"+segname+"')";
            st.executeUpdate(str);
            out.println("<p>SUGGESTED</p>");
        }
        catch(Exception e){
            out.println(e);
        }
        %>
    </center>
</body>
</html>
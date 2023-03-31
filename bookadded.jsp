<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BOOK ADDED</title>
    <style>
        body{
            background-color: #1C1C1C;
    color: #F0F0F0;
    font-family: Arial, sans-serif;
        }
        p{
            font-size: 14px;
    margin: 14px;
    text-align: center;
        }
    </style>
</head>
<body>
    <center>
        <%
        String bookname = request.getParameter("bn");
        Connection con = null;
        PreparedStatement pstm = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/library", "root", "koushiknarla30");
            pstm = con.prepareStatement("INSERT INTO libbooks (bname) VALUES (?)");
            pstm.setString(1, bookname);
            pstm.executeUpdate();
            out.println("<p>Book added successfully!</p>");
        } catch (Exception e) {
            out.println(e);
        } 
        %>
    </center>
</body>
</html>

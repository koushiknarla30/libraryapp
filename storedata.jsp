<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>status of book</title>
    <style>
        body {
            background-color: #f1f1f1;
            font-family: Arial, sans-serif;
        }
        h2 {
            font-size: 28px;
            margin-top: 0;
        }
        p {
            font-size: 18px;
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
    <center>
        
        <h2>Book Name: <%= request.getParameter("bookName") %></h2>
        <%
        String bname = (String) request.getParameter("bookName");
        String username = (String) session.getAttribute("mid");
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/library", "root", "koushiknarla30");
            ps = con.prepareStatement("SELECT * FROM bookdata WHERE bookname = ? AND uname = ?");
            ps.setString(1, bname);
            ps.setString(2, username);
            rs = ps.executeQuery();
            if (rs.next()) {
                out.println("<p>You have already taken this book</p>");
            } else {
                ps = con.prepareStatement("INSERT INTO bookdata (bookname, uname) VALUES (?, ?)");
                ps.setString(1, bname);
                ps.setString(2, username);
                ps.executeUpdate();
                out.println("<p>The book has been added to your account</p>");
            }
        } catch (Exception e) {
            out.println(e);
        }
        %>
    </center>
</body>
</html>

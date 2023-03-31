<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ADMIN LIBRARY</title>
    <style>
        body {
    background-color: #1C1C1C;
    color: #F0F0F0;
    font-family: Arial, sans-serif;
}

button {
    background-color: #3CB371;
    color: #F0F0F0;
    font-size: 16px;
    padding: 12px 24px;
    margin: 12px;
    border-radius: 4px;
    transition: background-color 0.2s ease-in-out;
}

button:hover {
    background-color: #2E8B57;
}

p {
    font-size: 14px;
    margin: 14px;
    text-align: center;
}

    </style>
</head>
<body>
    <center>
    <%
    out.println("<p>ADD BOOK TO LIBRARY</p>");
    out.println("<button onclick=\"location.href='addbook.jsp';\">ADD BOOK</button>");
    out.println("<br>");
    out.println("<p>CHECK BOOK DATA OF USER</p>");
    out.println("<button onclick=\"location.href='checkbookdata.jsp';\">CHECK USER BOOK DATA</button>");
    out.println("<br>");
    out.println("<p>LIST OF BOOKS IN LIBRARY</p>");
    out.println("<button onclick=\"location='bookslist.jsp';\">BOOKS LIST</button>");
    out.println("<br>");
    out.println("<p>LIST OF BOOKS REQUIRED TO ADD INTO LIBRARY</p>");
    out.println("<button onclick=\"location.href='booksugg.jsp';\">REQUIRED BOOKS</button>");
    

    %>
</center>
</body>
</html>
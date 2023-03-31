<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin</title>
    <style>
    body {
        background-color: black;
        color: aliceblue;
        font-family: Arial, sans-serif;
        text-align: center;
    }

    h3 {
        color: red;
    }

    </style>
</head>
<body>
    <center>
    <%
    String str=request.getParameter("aid");
    String str1=request.getParameter("apass");
    try{
    if(str.equals("koushiknarla30") && str1.equals("Koushik@2002")){
        response.sendRedirect("adminlib.jsp");
    }
    else{
        out.println("<h3>Invalid Password Or Username</h3>");
    }
}
catch(Exception e){
    System.out.println(e);
}
    %>
</center>
</body>
</html>
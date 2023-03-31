<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>USER BOOK DATA</title>
    <style>
        body {
            background-color: #f1f1f1;
            font-family: Verdana, Geneva, sans-serif;
            font-size: 12px;
            line-height: 1.5;
            margin: 0;
            padding: 0;
        }
        h1 {
            font-size: 20px;
            text-align: center;
        }
        table {
            background-color: #fff;
            border-collapse: collapse;
            margin: 0 auto;
            max-width: 600px;
            width: 100%;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 12px;
            text-align: center;
        }
        th {
            background-color: #f2f2f2;
            font-size: 18px;
            font-weight: bold;
            text-transform: uppercase;
        }
        tr {
            background-color: #f9f9f9;
        }
    </style>
</head>
<body>
    <center>
        <h1>USER BOOK DATA</h1>
    <%
    Connection con=null;
    Statement st=null;
    try{
        Class.forName("com.mysql.jdbc.Driver");
        con= DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","koushiknarla30");
        st = con.createStatement();
        String str="SELECT * FROM bookdata";
        ResultSet rs=st.executeQuery(str);
        out.println("<table>");
        out.println("<tr><th>USER NAME</th><th>BOOKNAME</th></tr>");
        while(rs.next()){
            out.print("<tr><td>"+rs.getString("uname")+"</td><td>"+rs.getString("bookname")+"</td></tr>");
        }
        out.println("</table>");

    }
    catch(Exception e){
        out.println(e);
    }
    %>
</center>

</body>
</html>
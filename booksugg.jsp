<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SUGGESTED BOOKS</title>
    <style>
        body {
  background-color: #f1f1f1;
  font-family: Verdana, Geneva, sans-serif;
  font-size: 12px;
}

table {
  background-color: #fff;
  border-collapse: collapse;
  max-width: 400px;
  width: 75%;
  margin: 0 auto;
}

th,
td {
  border: 1px solid #ddd;
  padding: 10px;
  text-align: center;
}

th {
  background-color: #f2f2f2;
  font-size: 14px;
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
        <%
        Connection con=null;
        Statement st=null;
        try{
        Class.forName("com.mysql.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","koushiknarla30");
        st=con.createStatement();
        String str="SELECT * FROM segbook WHERE bname NOT IN (SELECT bname FROM libbooks)";
        ResultSet rs=st.executeQuery(str);
        out.println("<table>");
            out.println("<tr><th>REQUIRED BOOKS</th></tr>");
        while(rs.next()){
            out.println("<tr><td>"+rs.getString("bname")+"</td></tr>");

        }

        }
        catch(Exception e){
            out.println(e);
        }

        %>
    </center>
</body>
</html>
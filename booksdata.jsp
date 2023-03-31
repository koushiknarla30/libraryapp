<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LIBRARY BOOK</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f1f1f1;
    }
    .books {
        display: flex;
        flex-wrap: wrap;
        justify-content: center;
        align-items: center;
    }

    .book {
        margin: 10px;
        padding: 10px;
        background-color: #fff;
        border-radius: 5px;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
        text-align: center;
    }

    button {
        background-color: #4CAF50;
        color: white;
        padding: 10px 20px;
        text-align: center;
        display: inline-block;
        font-size: 16px;
        margin: 4px 2px;
        border-radius: 5px;
    }

    button:hover {
        background-color: #3e8e41;
    }

    p {
        margin: 10px 0;
        line-height: 1;
    }
    .button-container {
    position: fixed;
    bottom: 20px;
    right: 20px;
}
.button-container button {
    display: block;
}

</style>
</head>

<body>
    <center>
        <div class="books">
            <% 
                Connection con = null;
                PreparedStatement pstm = null;
                String s1 = (String) session.getAttribute("id");
                session.setAttribute("mid", s1);
                try {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/library", "root", "koushiknarla30");
                    pstm = con.prepareStatement("SELECT * FROM libbooks");
                    ResultSet rs = pstm.executeQuery();
                    while (rs.next()) {
                        out.println("<div class='book'>");
                        out.println("<p>" + rs.getString("bname") + "</p>");
                        String bookName1 = rs.getString("bname");
                        session.setAttribute("bookName1", bookName1);
                        out.println("<button onclick=\"location.href='storedata.jsp?bookName=" + bookName1 + "'\">ADD</button>");
                        out.println("</div>");
                    }
                    out.println("<br>");
                    out.println("<div class='button-container'>");
                    out.println("<p>BOOK REQUIRED TO ADD TO LIBRARY OR BOOK SEGGESTIONS</p>");
                    out.println("<button onclick=\"location.href='seggbook.jsp'\">BOOK SEGGESTION</button>");
                out.println("</div>");
                } catch (Exception e) {
                    out.println(e);
                } 
            %>
        </div>
    </center>
</body>

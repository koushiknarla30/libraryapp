<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BOOK SUGGESTIONS</title>
    <style>
        body{
            background-color: #f1f1f1;
            font-family: Verdana, Geneva,sans-serif;
            font-size: 12px;
        }
        form{
            background-color: #292929;
            box-shadow: 0 0 10px rgba(0,0,0, 0.3);
            margin: 2em auto;
            max-width: 400px;
            padding: 2em;
        }
        label{
            display: block;
            margin-top: 10px;
            font-size: 18px;
            font-weight: bold;
            color: #f1f1f1;
        }
        input[type="text"]{
            border-radius: 5px;
            padding: 5px;
            margin: 5px;
            width: 70%;

        }
        input[type="submit"]{
            margin-top: 20px;
            padding: 10px;
            border-radius: 5px;
            background-color: #94060b;
            color: black;
            font-size: 14px
        }
    </style>
</head>
<body>
    <center>
        <form action="segtable.jsp" method="post">
        <label for="segg">SUGGEST BOOK NAME</label>
        <input type="text" name="segg" id="segg" required>
        <br>
        <br>
        <input type="submit" name="required" value="required">
        
    </form>

    </center>
    
</body>
</html>
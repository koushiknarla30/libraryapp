<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ADD BOOK</title>
    <style>
    body {
    background-color: #292929;
    color: #fff;
    font-family: Arial, sans-serif;
    }

    form {
        background-color: #292929;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
        margin: 2em auto;
        max-width: 400px;
        padding: 2em;
    }

    label {
        display: block;
        margin-bottom: 10px;
    }

    input[type="text"] {
        padding: 10px;
        width: 60%;
        border-radius: 5px;
        background-color: #ddd;
        margin-bottom: 20px;
    }

    input[type="submit"] {
        background-color: #4CAF50;
        color: #fff;
        padding: 10px 20px;
        border-radius: 5px;
        transition: background-color 0.3s ease-in-out;
}

input[type="submit"]:hover {
    background-color: #3e8e41;
}

    </style>
</head>
<body>
    <center>
        <form action="bookadded.jsp" method="POST">
            <label for="bna">BOOK NAME</label>
            <input type="text" name="bn" id="bn" required>
            <br>
            <br>
            <input type="submit" name="submit" value="ADD">
        </form>
    </center>
</body>
</html>

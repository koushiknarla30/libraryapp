<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>NEW USER</title>
    <style>
        body{
            background-color: black;
            color: aliceblue;
        }
        form{
            background-color: #292929;
            box-shadow: rgba(0,0,0, 0.3);
            margin: 2em auto;
            max-width: 400px;
            padding: 2em;
        }
        h1 {
            color: aliceblue;
            text-align: center;
        }

        input[type="text"], input[type="password"] {
            border-radius: 5px;
            padding: 5px;
            margin: 5px;
            width: 100%;
        }

        input[type="submit"] {
            background-color: rgb(240, 6, 6);
            border-radius: 5px;
            color: aliceblue;
            margin-top: 1em;
            padding: 10px;
            width: 100%;
        }

    input[type="submit"]:hover {
  background-color: rgba(240, 6, 6, 0.8);
    }

    </style>
</head>
<body>
    <center>
    <form action="newuserdata.jsp" method="POST">
        <h1>NEW USER</h1>
        User Name<input type="text" name ="myname" id="myname" required>
        <br>
        <br>
        Password<input type="password" name="pass" id="pass" required>
        <br>
        <br>
        Reenter Password<input type="password" name="repass" id="repass" required>
        <br>
        <br>
        <input type="submit" name="submit" value="submit"/>
    </form>
</center>
</body>
</html>
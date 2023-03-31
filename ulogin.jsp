<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LOGIN PAGE</title>
    <style>
        body{
    background-color: black;
    color: aliceblue;
}
h1 {
    margin-top: 30px;
    margin-bottom: 30px;
    font-size: 32px;
    font-weight: bold;
}
form[id="mfrom"]{
    background-color: #292929;
  border-radius: 10px;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
  margin: 2em auto;
  max-width: 400px;
  padding: 2em;
}
label {
    display: block;
    margin-top: 10px;
    font-size: 18px;
    font-weight: bold;
}

input[type="text"], input[type="password"] {
    display: block;
    margin-top: 5px;
    padding: 10px;
    width: 60%;
    border-radius: 5px;
    font-size: 16px;
}
input[type="submit"] {
    margin-top: 20px;
    padding: 10px;
    border-radius: 5px;
    background-color: #4CAF50;
    color: white;
    font-size: 16px;
}

input[type="submit"]:hover {
    background-color: #3e8e41;
}
p {
    margin-top: 30px;
    font-size: 16px;
    font-style: italic;
    font-weight: bold;
}

input[type="submit"][value="sigin"] {
    margin-top: 10px;
    padding: 5px;
    border-radius: 5px;
    background-color: #008CBA;
    color: white;
    font-size: 14px;
}

input[type="submit"][value="sigin"]:hover {
    background-color: #006B9C;
}

    </style>
</head>
<body>
    <center>
        <h1>USER LOGIN</h1>
    <form id="mfrom" action="cmrcetlib.jsp" method="POST">
        <label for="myid">User Name</label>
        <input type="text" name="myid" id="myid" required><br><br>
        <label for="pass">Password</label>
        <input type="password" name="pass" id="pass" required><br><br>
        <input type="submit" name="submit" value="Login">
    </form>
    <p>create new user</p>
    <form action="newuser.jsp" >
        <input type="submit" name="submit" value="sigin">
    </form>
</center>
</body>
</html>

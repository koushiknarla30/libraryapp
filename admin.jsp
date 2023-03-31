<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LOGIN PAGE</title>
    <style>
        body {
  background-color: black;
  color: aliceblue;
  font-family: Arial, sans-serif;
  font-size: 16px;
  line-height: 1.5;
  text-align: center;
}
form {
  background-color: #292929;
  border-radius: 10px;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
  margin: 2em auto;
  max-width: 400px;
  padding: 2em;
}

h1 {
  font-size: 2em;
  margin-top: 0;
}

label {
  display: block;
  font-size: 1.2em;
  margin-bottom: 0.5em;
  text-align: left;
}

input[type="text"],
input[type="password"] {
  background-color: #f2f2f2;
  border: none;
  border-radius: 4px;
  box-shadow: 0 0 2px rgba(0, 0, 0, 0.3);
  display: block;
  font-size: 1.2em;
  margin-bottom: 1em;
  padding: 0.5em;
  width: 100%;
}

input[type="submit"] {
  background-color: #fff;
  border: none;
  border-radius: 4px;
  color: #292929;
  cursor: pointer;
  font-size: 1.2em;
  font-weight: bold;
  margin-top: 1em;
  padding: 0.5em 1em;
  transition: all 0.3s ease-in-out;
}

input[type="submit"]:hover {
  background-color: #f2f2f2;
  color: #292929;
}
    </style>
</head>
<body>
    <center>
        <form action="alogin.jsp" method="POST">
        <h1>ADMIN LOGIN</h1>
        <label for="myid">User Name</label>
        <input type="text" name="aid" id="aid" required><br><br>
        <label for="pass">Password</label>
        <input type="password" name="apass" id="apass" required><br><br>
        <input type="submit" name="submit" value="Login">
    </form>
</center>
</body>
</html>
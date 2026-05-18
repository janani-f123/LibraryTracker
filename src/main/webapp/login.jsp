<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <link rel="stylesheet" href="css/style.css">
    <style>
body {
    margin: 0;
    font-family: 'Segoe UI', sans-serif;
    background: #ffeef2;
}

.container {
    width: 320px;
    margin: 80px auto;
    background: #fff6f8;
    padding: 30px;
    border-radius: 12px;
    box-shadow: 0 8px 20px rgba(212, 140, 163, 0.25);
    text-align: center;
}

h2 {
    color: #d48ca3;
    margin-bottom: 20px;
}

input {
    width: 100%;
    padding: 10px;
    margin: 8px 0 15px 0;
    border: 1px solid #f3c1cf;
    border-radius: 6px;
    outline: none;
}

input:focus {
    border-color: #c06c84;
    box-shadow: 0 0 5px rgba(192,108,132,0.3);
}

button {
    width: 100%;
    padding: 10px;
    background: #c06c84;
    border: none;
    color: white;
    font-weight: bold;
    border-radius: 6px;
    cursor: pointer;
}

button:hover {
    background: #b45c74;
}

a {
    color: #d48ca3;
    text-decoration: none;
}

a:hover {
    text-decoration: underline;
}
</style>
</head>
<body>
<div class="container">
    <h2> Library Login</h2>

    <form action="login" method="post">
        Username: <input type="text" name="username" required><br><br>
        Password: <input type="password" name="password" required><br><br>
        <button type="submit">Login</button>
    </form>

    <p>New user? <a href="register.jsp">Register here</a></p>
</div>
</body>
</html>
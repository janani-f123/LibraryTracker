<%
if(session.getAttribute("userId") == null){
    response.sendRedirect("login.jsp");
}
%>

<!DOCTYPE html>
<html>
<head>
    <title>Dashboard</title>

    <style>
body {
    margin: 0;
    font-family: 'Segoe UI', sans-serif;
    background: #ffeef2;
}

.container {
    width: 420px;
    margin: 90px auto;
    background: #fff6f8;
    padding: 35px;
    border-radius: 12px;
    box-shadow: 0 8px 20px rgba(212, 140, 163, 0.25);
    text-align: center;
}

h1 {
    color: #d48ca3;
    margin-bottom: 25px;
}

a {
    display: block;
    margin: 12px 0;
    padding: 12px;
    background: #c06c84;
    color: white;
    text-decoration: none;
    border-radius: 8px;
    font-weight: 600;
}

a:hover {
    background: #b45c74;
}
</style>
</head>

<body>

<div class="container">
    <h1>Virtual Library</h1>

    <a href="addBook.jsp">Add Book</a>
    <a href="viewBooks">View My Books</a>
    <a href="stats">Reading Stats</a>
    <a href="logout">Logout</a>
</div>

</body>
</html>
<%
if(session.getAttribute("userId") == null){
    response.sendRedirect("login.jsp");
}
%>

<!DOCTYPE html>
<html>
<head>
    <title>Add Book</title>
    <link rel="stylesheet" href="css/style.css">
    <style>
body {
    margin: 0;
    font-family: 'Segoe UI', sans-serif;
    background: #ffeef2;
}

.container {
    width: 400px;
    margin: 60px auto;
    background: #fff6f8;
    padding: 30px;
    border-radius: 12px;
    box-shadow: 0 8px 20px rgba(212, 140, 163, 0.25);
}

h2 {
    color: #d48ca3;
    text-align: center;
    margin-bottom: 20px;
}

input {
    width: 100%;
    padding: 10px;
    margin: 10px 0;
    border: 1px solid #f3c1cf;
    border-radius: 6px;
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
</style>
</head>
<body>


<div class="container">
    <h2>Add a Book</h2>

    <form action="addBook" method="post" enctype="multipart/form-data">
        <input name="title" placeholder="Book Title" required><br><br>
        <input name="author" placeholder="Author Name" required><br><br>
        <input name="tag" placeholder="Genre / Tag" required><br><br>
        <input type="file" name="cover"><br><br>
        <button type="submit">Add Book</button>
    </form>
</div>
</body>
</html>
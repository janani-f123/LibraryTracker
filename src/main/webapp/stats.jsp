<%@ page import="java.sql.*, com.library.dao.BookDAO" %>

<%
if(session.getAttribute("userId") == null){
    response.sendRedirect("login.jsp");
    return;
}

int userId = (int) session.getAttribute("userId");
BookDAO dao = new BookDAO();
%>

<!DOCTYPE html>
<html>
<head>
    <title>Stats</title>
    <link rel="stylesheet" href="css/style.css">
    <style>
body {
    margin: 0;
    font-family: 'Segoe UI', sans-serif;
    background: #ffeef2;
}

.container {
    width: 80%;
    margin: 40px auto;
}

h2, h3 {
    color: #d48ca3;
    text-align: center;
}

.stat-box {
    background: #fff6f8;
    padding: 12px;
    margin: 10px 0;
    border-radius: 10px;
    box-shadow: 0 6px 15px rgba(212, 140, 163, 0.2);
}

a {
    display: inline-block;
    margin-top: 20px;
    padding: 10px 15px;
    background: #c06c84;
    color: white;
    text-decoration: none;
    border-radius: 8px;
}

a:hover {
    background: #b45c74;
}
</style>
</head>
<body>

<div class="container">
    <h2>Reading Stats</h2>

    <!-- Total Books -->
    <div class="stat-box">
        <h3>Total Books: <%= dao.totalBooks(userId) %></h3>
    </div>

    <!-- By Author -->
    <h3>By Author</h3>
    <%
    ResultSet rsAuthor = dao.booksByAuthor(userId);
    while(rsAuthor.next()){
    %>
        <div class="stat-box">
            <%= rsAuthor.getString("author") %> : <%= rsAuthor.getInt("count") %>
        </div>
    <%
    }
    %>

    <!-- By Tag -->
    <h3>By Tag</h3>
    <%
    ResultSet rsTag = dao.booksByTag(userId);
    while(rsTag.next()){
    %>
        <div class="stat-box">
            <%= rsTag.getString("tag") %> : <%= rsTag.getInt("count") %>
        </div>
    <%
    }
    %>

    <a href="dashboard.jsp">Back</a>
</div>

</body>
</html>
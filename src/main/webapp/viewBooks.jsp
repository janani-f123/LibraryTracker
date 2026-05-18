<%@ page import="java.util.*, com.library.model.Book"%>
<%
List<Book> books = (List<Book>) request.getAttribute("books");

if (books == null) {
    books = new ArrayList<>();
}
%>

<!DOCTYPE html>
<html>
<head>
    <title>My Library</title>
    <link rel="stylesheet" href="css/style.css">
    <style>
body {
    margin: 0;
    font-family: 'Segoe UI', sans-serif;
    background: #ffeef2;
}

.container {
    width: 90%;
    margin: 30px auto;
}

h2 {
    color: #d48ca3;
    text-align: center;
}

.shelf {
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(160px, 1fr));
    gap: 25px;
    padding: 25px;
    background: #fff6f8;
    border-radius: 12px;
    box-shadow: 0 8px 20px rgba(212, 140, 163, 0.2);
}

.book {
    background: white;
    border-radius: 10px;
    overflow: hidden;
    box-shadow: 0 6px 12px rgba(200, 150, 170, 0.25);
    transition: 0.2s;
}

.book:hover {
    transform: translateY(-5px);
}

.book img {
    width: 100%;
    height: 180px;
    object-fit: cover;
}

.book-title {
    font-size: 14px;
    font-weight: 600;
    color: #c06c84;
    padding: 8px 10px 0 10px;
}

.book-author {
    font-size: 12px;
    color: #9a6b7a;
    padding: 0 10px 10px 10px;
}

.book-tag {
    font-size: 11px;
    color: #b5838d;
    padding: 0 10px 10px 10px;
}
</style>
</head>

<body>

<div class="container">

    <h2>My Library</h2>

    <div class="shelf">

        <%
        for (Book b : books) {
        %>

        <div class="book">

            <img src="<%= request.getContextPath() + "/" + b.getImagePath() %>" alt="Book Cover">

            <div class="book-title">
                <%= b.getTitle() %>
            </div>

            <div class="book-author">
                <%= b.getAuthor() %>
            </div>

        </div>

        <%
        }
        %>

    </div>

</div>

</body>
</html>
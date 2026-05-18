<!DOCTYPE html>
<html>
<head>
<title>Register</title>

<style>
body {
	margin: 0;
	font-family: 'Segoe UI', sans-serif;
	background: #ffeef2;
}

/* Center container */
.container {
	width: 320px;
	margin: 80px auto;
	background: #fff6f8;
	padding: 30px;
	border-radius: 12px;
	box-shadow: 0 8px 20px rgba(212, 140, 163, 0.25);
	text-align: center;
}

/* Title */
h2 {
	color: #d48ca3;
	margin-bottom: 20px;
}

/* Inputs */
input {
	width: 100%;
	padding: 10px;
	margin: 8px 0 15px 0;
	border: 1px solid #f3c1cf;
	border-radius: 6px;
	outline: none;
	background: #fff;
}

input:focus {
	border-color: #c06c84;
	box-shadow: 0 0 5px rgba(192, 108, 132, 0.3);
}

/* Button */
button {
	width: 100%;
	padding: 10px;
	background: #c06c84;
	border: none;
	color: white;
	font-weight: bold;
	border-radius: 6px;
	cursor: pointer;
	transition: 0.2s ease;
	box-shadow: 0 4px 10px rgba(192, 108, 132, 0.25);
}

button:hover {
	background: #b45c74;
	transform: translateY(-2px);
}

/* Link */
a {
	display: block;
	margin-top: 15px;
	color: #d48ca3;
	text-decoration: none;
	font-weight: 500;
}

a:hover {
	text-decoration: underline;
}
</style>
</head>

<body>

	<div class="container">
		<h2>Create Account</h2>

		<form action="register" method="post">
			<label>Username</label> <input name="username" required> <label>Password</label>
			<input type="password" name="password" required>

			<button type="submit">Register</button>
		</form>

		<a href="login.jsp">Back to Login</a>
	</div>

</body>
</html>
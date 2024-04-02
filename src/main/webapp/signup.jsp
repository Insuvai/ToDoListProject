<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form action="saveuser" method="post" enctype="multipart/form-data">

ID: <input type="text" name="id"><br><br>
Name: <input type="text" name="name"><br><br>
Email: <input type="email" name="email"><br><br>
Contact: <input type="text" name="contact"><br><br>
Password: <input type="password" name="password"><br><br>
Image: <input type="file" name="image"><br><br>
<input type="submit">

</form>
</body>
</html>
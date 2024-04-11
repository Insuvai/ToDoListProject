<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
body{
margin-top: 200px;
margin-left: 550px;
background-color: black;
}

#index{
border:none;
box-shadow: 2px 2px 0.5em 0.5em whitesmoke;
height:250px;
width:400px;
background-image: url("https://cdn.pixabay.com/photo/2016/10/03/23/18/puzzle-1713164_640.jpg");
}
button{
background-color:white;
opacity:0.6;
border:none;
height:40px;
width:60px;
}
a{
color:black;
font:14px;
font-weight:bolder;
text-decoration: none;
}
#b1{
margin-left: 120px;
margin-top: 100px;
}
#b2{
margin-left: 40px;
}
button:hover{
transform: scale(1.3,1.3);
color: white;
}
h1{
padding-left:125px;
color: white;
}
</style>
</head>


<body>
<h1>To Do List</h1>
<div id="index">

<button id="b1"><a href="Login.jsp">Login</a></button>
<button id="b2"><a href="signup.jsp">SignUp</a></button>
</div>

</body>
</html>
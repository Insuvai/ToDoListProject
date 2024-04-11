<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body{
background-image: url("https://cdn.pixabay.com/photo/2016/09/30/13/40/puzzle-1705339_1280.jpg");
background-repeat: no-repeat;
background-size: 100%,100%;
}
#login{
	margin-left:550px;
	margin-top: 210px;
	font-size: 18px;
    padding-top: 30px;
    border: 1px solid white;
    height:240px;
    width:450px;
    text-align: center;
    background-color: none;
    box-shadow: 2px 3px 0.7em 0.7em rgb(7,40,7);
    border-radius: 6%;
    opacity: 0.8;  
   
}
form{
text-align: center;
padding-top: 40px;
color: black;
}
.entry:hover{
transform: scale(1.07,1.07);

}

button{
width:100px;
height:40px;
font-size: 14px;
font-weight: bolder;
}
button:hover{

transform: scale(1.3,1.3);
    /*animation-duration:2s;*/
    background-color: rgb(7,40,7);
    color: white;
}

</style>
</head>
<body>
<div id="login">
<form action="userlogin" method="post">

Email: <input type="text" name="email" class="entry"><br><br>
Password: <input type="text" name="password" class="entry"><br><br>

<button>Submit</button>

</form>
</div>

</body>
</html>
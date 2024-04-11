<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body{
background-image: url("https://cdn.pixabay.com/photo/2016/10/11/21/43/geometric-1732847_960_720.jpg");
background-repeat: no-repeat;
background-size: 1500px,1500px;
}
#signup{
    margin-left:460px;
    margin-top: 120px;
    font-size: 18px;
    padding-top: 30px;
    border: 1px solid white;
    height:400px;
    width:550px;
    text-align: center;
    background-color: none;
    box-shadow: 2px 3px 0.7em 0.7em rgb(147, 189, 203);
    border-radius: 6%;
    opacity: 0.8;  
    color: white;
}
form{
text-align: center;
padding-top: 40px;
color: white;
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
    background-color: white;
    color: Black;
}
</style>
</head>
<body>

<div id="signup">
<form action="saveuser" method="post" enctype="multipart/form-data">

Id: <input type="text" name="id" class="entry"><br><br>
Name: <input type="text" name="name" class="entry"><br><br>
Email: <input type="text" name="email" class="entry"><br><br>
Contact: <input type="text" name="contact" class="entry"><br><br>
Password: <input type="text" name="password" class="entry"><br><br>
Image: <input type="file" name="image" class="entry"><br><br>
<button>Submit</button>

</form>
</div>
</body>
</html>
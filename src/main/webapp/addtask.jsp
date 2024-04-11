<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body{
background-image: url("https://cdn.pixabay.com/photo/2014/05/27/23/32/matrix-356024_1280.jpg");
background-repeat: no-repeat;
background-size: 1500px,1500px;
}
#add{
    margin-left:470px;
    margin-top: 140px;
    font-size: 18px;
    padding-top: 30px;
    border: 2px solid white;
    height:400px;
    width:550px;
    text-align: justify;
    background-color: none;
    box-shadow: 2px 3px 0.7em 0.7em rgb(59,126,69);
    border-radius: 6%;
    opacity: 0.8;  
    color: white;
}
form{
text-align: center;
padding-top: 40px;
}
input{
background-color: white;
border:none;
}
.entry:hover{
transform: scale(1.07,1.07);

}
button{
border:none;
width:100px;
height:40px;
font-size: 14px;
font-weight: bolder;
background-color: white;
}
button:hover{

transform: scale(1.3,1.3);
    background-color:rgb(59,126,69);
    color:white ;
}
</style>
</head>
<body>

<div id="add">

<form action="addtask" method="post">

Task Id: 
<input type="text" name="taskid" class="entry"><br><br>
Task Title: 
<input type="text" name="tasktitle" class="entry"><br><br>
	
Task Description: <input type="text" name="taskdescription" class="entry"><br><br>
Task Priority:<br>
Options:
<label for="option1">
      <input type="radio" id="option1" value="low" name="taskpriority" class="entry">Low
</label>

<label for="option2">
	  <input type="radio" id="option2" value="medium" name="taskpriority" class="entry">Medium
</label>

<label for="option3">
      <input type="radio" id="option3" value="high" name="taskpriority"class="entry">High<br>
      
</label><br>

Task Duedate: 
<input type="date" name="taskduedate" class="entry"><br><br><br>

<button>Submit</button>
</form>
</div>
</body>
</html>
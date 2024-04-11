<%@page import="dto.Task"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body{
background-image: url("https://cdn.pixabay.com/photo/2020/02/13/06/49/seascape-4844697_640.jpg");
background-repeat: no-repeat;
background-size: 1500px,1500px;
}
form{
text-align: center;
padding-top: 40px;
color: black;
}
div{
 margin-left:460px;
    margin-top: 120px;
    font-size: 18px;
    padding-top: 10px;
    border: 1px solid white;
    height:400px;
    width:550px;
    text-align: center;
    background-color: none;
    box-shadow: 2px 3px 0.7em 0.7em rgb(147, 180, 203);
    border-radius: 6%;
    opacity: 0.8;  
    color: white;
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
input:hover{
transform: scale(1.07,1.07);
}
</style>
</head>
<body>
<div>
<% Task task=(Task)request.getAttribute("task"); %>
<form action="updatetask" method="post">
Task Id:<input type="text" name="taskid"  hidden="" value="<%=task.getTaskid()%>"><br>
Task Title:<input type="text" name="tasktitle"  value="<%=task.getTasktitle()%>"><br>
Task Description:<input type="text" name="taskdescription"  value="<%=task.getTaskdescription()%>"><br>
Current Task Priority:<h4><%=task.getTaskpriority()%></h4><br>
Task Priority:<br>
<label for="option1">
<input type="radio" name="taskpriority" id="option1" value="low">Low 
</label>
<label for="option2">
<input type="radio" name="taskpriority" id="option2" value="medium">Medium
</label>
<label for="option3">
<input type="radio" name="taskpriority" id="option3" value="high">High
</label>
<br>
Due Date:<input type="date" name="taskduedate"  value="<%=task.getTaskduedate()%>"><br>
Task Status:<input type="text" name="taskstatus"  value="<%=task.getTaskstatus()%>"><br><br>
<button>Submit</button>
</form>
</div>
</body>
</html>
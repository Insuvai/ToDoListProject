<%@page import="dto.Task"%>
<%@page import="java.util.List"%>
<%@page import="dto.User"%>
<%@page import="java.util.Base64"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>

table,th,tr,td{
border:1px solid black;
}
table{
margin:30px;
width:1400px;
text-align: center;
color: black;
background-color: white;
}
a{
text-decoration: none;
color: black;
}
body{
background-image: url("https://cdn.pixabay.com/photo/2020/02/11/10/24/lake-4839058_640.jpg");
background-repeat: no-repeat;
background-size: 1500px,1500px;

}
button{
background-color:white;
opacity:0.6;
border:none;
height:40px;
width:100px;
color:black;
font:14px;
font-weight:bolder;
text-decoration: none;
}
#div1{
margin-left: 1200px;
}
button:hover{
transform: scale(1.2,1.2);
color: white;
}
#div2{
text-align: center;
}
h3{
color: white;
font-weight: bolder;
font-size: 30px;
}
</style>
</head>
<body>
<div id="div1">
<button id="button1"><a href="addtask.jsp">Add Task</a></button>   <button id="button2"><a href="logout">LogOut</a></button>
</div>

<% User user=(User)request.getSession().getAttribute("user"); %>
<% String username=user.getUsername(); %>

<div id="div2">
<h1> WELCOME <%= username %></h1>
<h2> Email: <%= user.getUseremail() %></h2>

<% String image=new String(Base64.getEncoder().encode(user.getUserimage())); %>
<img alt="" src="data:image/jpeg;base64,<%= image %>" width="250" height="150">
<h3>TASKS</h3>
</div>
<% List<Task> tasks=(List)request.getAttribute("tasks"); %>

<table>
<tr>
<th>S.NO</th>
<th>TITLE</th>
<th>DESCRIPTION</th>
<th>PRIORITY</th>
<th>DUE DATE</th>
<th>STATUS</th>
<th>DELETE</th>
<th>EDIT</th> 
</tr>
<% int num=1; %>
<% if(!tasks.isEmpty())  {%>
<% for(Task task :tasks){%>

<tr>
<td><%=num %></td>
<td><%= task.getTasktitle() %></td>
<td><%= task.getTaskdescription() %></td>
<td><%=task.getTaskpriority() %></td>
<td><%=task.getTaskduedate() %></td>
<td><%= task.getTaskstatus() %></td>
<td><a href="delete?taskid=<%=task.getTaskid() %>">Delete</a></td>
<td><a href="edit?taskid=<%=task.getTaskid() %>">Edit</a></td>
</tr>
<% num+=1; %>
<% } %>
<% } %>
</table>

</body>
</html>
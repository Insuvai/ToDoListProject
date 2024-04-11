package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Dao;
import dto.Task;
import dto.User;
@WebServlet("/updatetask")
public class Updatetask  extends HttpServlet{

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int taskid=Integer.parseInt(req.getParameter("taskid"));
		String tasktitle=req.getParameter("tasktitle");
		String taskdescription=req.getParameter("taskdescription");
		String taskpriority=req.getParameter("taskpriority"); 
		String taskduedate=req.getParameter("taskduedate");
		String taskstatus=req.getParameter("taskstatus"); 
		User user=(User)req.getSession().getAttribute("user");
		int userid=user.getUserid();
		Dao dao=new Dao();
		Task task=new Task(taskid, tasktitle, taskdescription, taskpriority, taskduedate, taskstatus, userid);
		try {
			int res=dao.updateTask(task);
			if(res>0) {
				User u=(User)req.getSession().getAttribute("user");
				req.setAttribute("tasks", dao.getalltasksByuserId(u.getUserid())); 
                RequestDispatcher disp=req.getRequestDispatcher("Home.jsp");
       		    disp.include(req, resp);
			}
       		 else {

       			resp.getWriter().println("NOT UPDATE");

       			} 
		}
		catch (ClassNotFoundException | SQLException e) {

       			 e.printStackTrace();
		}
	}
}

			
		
	
		


		








		





		





		



		





	





		

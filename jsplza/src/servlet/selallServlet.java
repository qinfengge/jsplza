package servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import dao.employee;
import dao.employeeDaoImp;

@WebServlet("/selallServlet")
public class selallServlet extends HttpServlet{
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String opr = request.getParameter("opr");
		if("load".equals(opr)){
			employeeDaoImp eimp = new employeeDaoImp();
			try {
			List<employee> list = eimp.selall();
			request.setAttribute("all", list);
			request.getRequestDispatcher("showxa.jsp").forward(request, response);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		employeeDaoImp eimp = new employeeDaoImp();
		List<employee> list = eimp.selall();
		request.setAttribute("all", list);
		request.getRequestDispatcher("show.jsp").forward(request, response);
		*/
		doGet(request, response);
	}
}

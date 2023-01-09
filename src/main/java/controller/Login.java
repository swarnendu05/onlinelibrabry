package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.LoginDAO;
import model.Student;

/**
 * Servlet implementation class AdminLog
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Login() {
		;
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		Student st = new Student();

		st.setEmail(request.getParameter("username"));
		st.setPassword(request.getParameter("password"));
		String isAdmin = request.getParameter("isAdmin");

		try {
			if (LoginDAO.adminLogin(st) == "Success") {
				System.out.println("from serveletss");
				HttpSession session = request.getSession();
				session.setAttribute("userName", st.getEmail());
				// response.sendRedirect(request.getContextPath() + "/nevber.jsp");
			} else {
				RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
				request.setAttribute("error", "Login Failed");
				rd.forward(request, response);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}

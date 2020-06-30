package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Dao;
import entity.Bean;


/**
 * Servlet implementation class addServlet
 */
@WebServlet("/addServlet")
public class addServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
        request.setCharacterEncoding("UTF-8");
		
		Bean bean = new Bean();
		bean.setId(Integer.parseInt(request.getParameter("id")));
		bean.setName(request.getParameter("name"));
		bean.setWin(Integer.parseInt(request.getParameter("win")));
		bean.setLose(Integer.parseInt(request.getParameter("lose")));
		Dao dao = new Dao();
		if(dao.add(bean)) {
			
			request.setAttribute("message", "添加成功");
			request.getRequestDispatcher("add.jsp").forward(request,response);
			//response.sendRedirect("index.jsp");
		}
		else {
			request.setAttribute("message","添加失败");
			request.getRequestDispatcher("add.jsp").forward(request,response);
			//response.sendRedirect("add.jsp");
		}
	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

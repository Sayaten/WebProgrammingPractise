package jspexam.servlet;

import practise03_package.*;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Practise04_RankingServlet
 */
@WebServlet("/Practise04_RankingServlet")
public class Practise04_RankingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// 컨텐츠 타입 선언 및 한글 설정 
		response.setContentType("text/html;charset=UTF-8"); 

		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter(); 
		
		javax.servlet.ServletContext application = request.getServletContext();

		out.println("<HTML><HEAD>");
		out.println("<style>");
		out.println("#title{");
		out.println("width: 150px;");
		out.println("margin-left: auto;");
		out.println("margin-right: auto;");
		out.println("margin-bottom: 50px;");
		out.println("}");
		out.println("#rank{");
		out.println("width: 400px;");
		out.println("margin-left: auto;");
		out.println("margin-right: auto;");
		out.println("text-align: center;");
		out.println("}");
		out.println("#select_buttons{");
		out.println("width: 200px;");
		out.println("margin-left: auto;");
		out.println("margin-right: auto;");
		out.println("}");
		out.println("</style>");
		out.println("</HEAD>");
		out.println("<BODY>");

		out.println("<div id=\"title\">");
		out.println("<h1>랭킹 보기</h1>");
		out.println("</div>");
		out.println("<hr width=\"400px\" align=\"center\">");
		out.println("<div id=\"rank\">");

		for (int i = 0; i < 3; ++i) {
			if (((PriorityQueue) application.getAttribute("score_list"))
					.getSize() > i) {
				out.print((i + 1)
						+ ". "
						+ ((PriorityQueue) application
								.getAttribute("score_list")).peek(i).getName()
						+ "\t\t"
						+ ((PriorityQueue) application
								.getAttribute("score_list")).peek(i).getCount()
						+ "회\n");
			}
		}

		out.println("</div>");

		out.println("<div id=\"select_buttons\">");
		out.println("<form action=\"Practise/04/practise04.jsp\">");
		out.println("<input type=\"submit\" value=\"로그아웃\">");
		out.println("</form>");
		out.println("<form action=\"Practise/04/practise04_menu.jsp\">");
		out.println("<input type=\"submit\" value=\"확인\">");
		out.println("</form>");
		out.println("</div>");
		out.println("</BODY></HTML>");
	}

}

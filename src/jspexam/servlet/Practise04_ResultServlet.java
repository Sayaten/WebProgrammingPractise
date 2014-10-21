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
 * Servlet implementation class Practise04_ResultServlet
 */
@WebServlet("/Practise04_ResultServlet")
public class Practise04_ResultServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int input, answer, count;
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter(); 
		
		javax.servlet.http.HttpSession session = request.getSession();
		javax.servlet.ServletContext application = request.getServletContext();
		
		input = Integer.parseInt(request.getParameter("input"));
		answer = (Integer)session.getAttribute("answer");
		count = (Integer)session.getAttribute("count");
		/*
		answer = Integer.parseInt((String)session.getAttribute("answer"));
		count = Integer.parseInt((String)session.getAttribute("count"));
		*/
		++count;
		session.setAttribute("count", new Integer(count));

		out.println("<HTML><HEAD>");
		out.println("<style>");
		out.println("#result{");
		out.println("width: 500px;");
		out.println("margin-left: auto;");
		out.println("margin-right: auto;");
		out.println("text-align: center;");
		out.println("}");
		out.println("#title{");
		out.println("width: 140px;");
		out.println("margin-left: auto;");
		out.println("margin-right: auto;");
		out.println("margin-bottom: 50px;");
		out.println("}");
		out.println("</style>");
		out.println("</HEAD>");
		out.println("<BODY>");
		out.println("<h1 id=\"title\">숫자게임</h1>");
		out.println("<hr width=\"400px\" align=\"center\">");
		out.println("<div id=\"result\">");
		switch(isCorrect(answer, input))
		{
		case -1:
			out.println(input + "보다 작습니다.");
			out.println("<form action=\"Practise/04/practise04_game.jsp\">");
			out.println("<input type=\"submit\" value=\"확인\">");
			out.println("</form>");
			break;
		case 0:
			out.println(input + "보다 큽니다.");
			out.println("<form action=.\"Practise/04/practise04_game.jsp\">");
			out.println("<input type=\"submit\" value=\"확인\">");
			out.println("</form>");
			break;
		case 1:
			out.println(input + " 정답입니다.");
			out.println("당신은 " + count + "번째에 맞췄습니다.");
			
			if( ( (PriorityQueue)application.getAttribute("score_list") ).isEmpty() )
			{
				( (PriorityQueue)application.getAttribute("score_list") ).add(new Element((String)session.getAttribute("name"), count));
			}
			else 
			{
				int size = ( (PriorityQueue)application.getAttribute("score_list") ).getSize();
				int i;
				for(i = 0 ; i < size ; ++i)
				{
					if ( ( (PriorityQueue) application.getAttribute("score_list") ).peek(i).getName().
							compareTo((String)session.getAttribute("name")) == 0) {
						if( ( (PriorityQueue) application.getAttribute("score_list") ).peek(i).getCount() > count )
						{
							( (PriorityQueue) application.getAttribute("score_list") ).poll(i);
							( (PriorityQueue) application.getAttribute("score_list") ).add(new Element((String)session.getAttribute("name"),count));
						}
						break;
					}
				}
				if(i == size)
				{
					( (PriorityQueue) application.getAttribute("score_list") ).add(new Element((String)session.getAttribute("name"), count));
				}
			}

			count = 0;
			java.util.Random rand = new java.util.Random();
			answer = rand.nextInt(100) + 1;

			out.println("<form action=\"Practise/04/practise04_game.jsp\">");
			out.println("<input type=\"submit\" value=\"한 번 더\">");
			out.println("</form>");

			out.println("<form action=\"Practise/04/practise04_ranking.jsp\">");
			out.println("<input type=\"submit\" value=\"확인\">");
			out.println("</form>");
			
			session.setAttribute("answer", new Integer(answer));
			session.setAttribute("count", new Integer(count));
			break;
		}
		out.println("</div>");
		out.println("</BODY></HTML>");
	}
	
	public int isCorrect(int answer, int input)
	{
		if(input == answer)
		{
			return 0;
		}
		else if(input < answer )
		{
			return 1;
		}
		else
		{
			return -1;
		}
	}
}

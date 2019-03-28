package ch16;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ch13.*;

/**
 * Servlet implementation class AjaxServlet
 */
@WebServlet("/ajax")
public class AjaxServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AjaxServlet() {
        super();
        System.out.println("AjaxServlet 생성됨");
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("AjaxServlet : doGet 호출됨");

//        request.setCharacterEncoding("utf-8");
//		response.setContentType("text/html; charset=utf-8");
//		String param = (String) request.getParameter("param");
//		System.out.println("param = " + param);
//		PrintWriter writer = response.getWriter();
//		writer.print("안녕하세요. AJAX 시험입니다.");

        request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter writer = response.getWriter();

		String id = (String) request.getParameter("id");
		System.out.println("member id = " + id);
		MemberDAO memberDAO = new MemberDAO();
		boolean isDuplicatedID = memberDAO.isDuplicatedID(id);

		if (isDuplicatedID) {
			writer.print("duplicated");
		} else {
			writer.print("ok");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("AjaxServlet : doPost 호출됨");

        request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		String result = "";
		PrintWriter writer = response.getWriter();
		result="<main><book>"+
			"<title><![CDATA[jQuery 시험]]></title>" +
			"<writer><![CDATA[eMP사업부 | 한원희]]></writer>" +                             
			"<image><![CDATA[http://localhost:8090/myShop/image/image1.png]]></image>"+
			"</book>"+
			"<book>"+
			"<title><![CDATA[Ajax 시험]]></title>" +
			"<writer><![CDATA[eMP사업부 | 한원희]]></writer>" +                 
			"<image><![CDATA[http://localhost:8090/myShop/image/duke.png]]></image>"+
			"</book></main>";
		System.out.println(result);
		writer.print(result);
	}

	/**
	 * @see HttpServlet#doPut(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("AjaxServlet : doPut 호출됨");

        request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter writer = response.getWriter();

		String id = (String) request.getParameter("id");
		System.out.println("member id = " + id);
		MemberDAO memberDAO = new MemberDAO();
		boolean isDuplicatedID = memberDAO.isDuplicatedID(id);

		if (isDuplicatedID) {
			writer.print("duplicated");
		} else {
			writer.print("ok");
		}
	}

	/**
	 * @see HttpServlet#doDelete(HttpServletRequest, HttpServletResponse)
	 */
	protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("AjaxServlet : doDelete 호출됨");
	}
}

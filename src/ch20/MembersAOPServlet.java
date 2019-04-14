package ch20;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.xml.XmlBeanFactory;
import org.springframework.core.io.FileSystemResource;
import org.springframework.core.io.Resource;

import ch17.*;


/**
 * Servlet implementation class MembersAOPServlet
 */
@WebServlet("/members_aop")
public class MembersAOPServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private MemberDAO memberDAO;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public MembersAOPServlet() {
        super();
        System.out.println("MembersAOPServlet 생성됨.");
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("MembersAOPServlet doGet() 호출됨");
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");

        ServletContext context = request.getServletContext();
        String strXmlConfig = context.getInitParameter("config_folder") + "\\ch20\\memberAOP.xml";
        
        Resource resource = new FileSystemResource(strXmlConfig);
        File file = resource.getFile();
        System.out.println(file.getAbsolutePath());
        BeanFactory factory = new XmlBeanFactory(resource);

        memberDAO = (MemberDAO) factory.getBean("proxyCal");

        List<Member> membersList = memberDAO.listMembers();
        request.setAttribute("membersList", membersList);
        RequestDispatcher dispatch = request.getRequestDispatcher("/ch17/list_member.jsp");
        dispatch.forward(request, response);
	}

}

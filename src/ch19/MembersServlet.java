package ch19;

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
 * Servlet implementation class MembersServlet
 */
@WebServlet("/members")
public class MembersServlet extends HttpServlet {
    private static final long serialVersionUID = -628337731004531715L;
    private MemberDAO memberDAO;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MembersServlet() {
        super();
        System.out.println("MembersServlet 생성됨.");
        
        memberDAO = new MemberDAO();
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("MembersServlet doGet() 호출됨");
        ServletContext context = request.getServletContext();
        System.out.println(context.getRealPath("/myShop"));
        System.out.println(context.getContextPath());
        System.out.println(context.getResourcePaths("/"));
        String strXmlConfig = context.getInitParameter("config_folder") + "\\ch19\\person.xml";
        
        Resource resource = new FileSystemResource(strXmlConfig);
        File file = resource.getFile();
        System.out.println(file.getAbsolutePath());
        BeanFactory factory = new XmlBeanFactory(resource);

        PersonService person = (PersonService) factory.getBean("personService");
        person.sayHello();

        PersonService person1 = (PersonService) factory.getBean("personService1");
        person1.sayHello();
        System.out.println();

        PersonService person2 = (PersonService) factory.getBean("personService2");
        person2.sayHello();

        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        List<Member> membersList = memberDAO.listMembers();
        request.setAttribute("membersList", membersList);
        RequestDispatcher dispatch = request.getRequestDispatcher("/ch17/list_member.jsp");
        dispatch.forward(request, response);
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("MembersServlet doPost() 호출됨");
	}

}

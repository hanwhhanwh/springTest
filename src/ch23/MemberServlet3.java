package ch23;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ch23.MemberVO;

@WebServlet("/mem3.exe")
public class MemberServlet3 extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)  throws ServletException, IOException {
        doHandle(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doHandle(request, response);
    }

    private void doHandle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        MemberDAO dao = new MemberDAO();
        MemberVO memberVO = new MemberVO();
        String action = request.getParameter("action");
        String nextPage = "";

        if (action== null || action.equals("listMembers")) {
            List<MemberVO> membersList = dao.selectAllMemberMapList();
            request.setAttribute("membersList", membersList);
            nextPage = "ch23/listMembers2.jsp";
        } else if (action.equals("selectMemberById")) {
            String id = request.getParameter("value");
            memberVO = dao.selectMemberById(id);
            request.setAttribute("member", memberVO);
            nextPage = "ch23/memberInfo.jsp";
        } else if (action.equals("selectMemberByPwd")) {
            String pwd = request.getParameter("value");
            List<MemberVO> membersList = dao.selectMemberByPwd(pwd);
            request.setAttribute("membersList", membersList);
            nextPage = "ch23/listMembers2.jsp";
        }
        
        RequestDispatcher dispatch = request.getRequestDispatcher(nextPage);  
        dispatch.forward(request, response);
    }
}

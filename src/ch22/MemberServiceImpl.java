package ch22;

import java.util.List;

import org.springframework.dao.DataAccessException;

import ch22.MemberDAO;

public class MemberServiceImpl implements MemberService {
    private MemberDAO memberDAO;

    public void setMemberDAO(MemberDAO memberDAO) {
        this.memberDAO = memberDAO;
    }

    @Override
    public List<MemberVO> listMembers() throws DataAccessException {
        List<MemberVO> membersList = null;
        membersList = memberDAO.selectAllMembers();
        return membersList;
    }

}

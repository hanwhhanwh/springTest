package ch22;

import java.util.List;

import org.springframework.dao.DataAccessException;

import ch22.MemberVO;


public interface MemberDAO {
    public List<MemberVO> selectAllMembers() throws DataAccessException ;
    public int addMember(MemberVO memberVO) throws DataAccessException ;
}

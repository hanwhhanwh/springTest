package ch24;

import java.util.List;

import org.springframework.dao.DataAccessException;
import ch24.MemberVO;

public interface MemberService {
	 public List<MemberVO> listMembers() throws DataAccessException;
	 public int addMember(MemberVO membeVO) throws DataAccessException;
	 public int removeMember(String id) throws DataAccessException;

}

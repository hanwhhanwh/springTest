package ch26;

import java.util.List;

import org.springframework.dao.DataAccessException;
import ch26.MemberVO;

public interface MemberService {
	 public List<MemberVO> listMembers() throws DataAccessException;
	 public int addMember(MemberVO memberVO) throws DataAccessException;
	 public int removeMember(String id) throws DataAccessException;

}

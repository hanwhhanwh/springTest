package ch24;

import java.util.List;

import org.springframework.dao.DataAccessException;
import ch24.MemberVO;


public interface MemberDAO {
	 public List<MemberVO> selectAllMemberList() throws DataAccessException;
	 public int insertMember(MemberVO memberVO) throws DataAccessException ;
	 public int deleteMember(String id) throws DataAccessException;
	 

}

package ch22;


import java.util.List;

import org.springframework.dao.DataAccessException;

public interface MemberService {
    public List<MemberVO> listMembers() throws DataAccessException;
}

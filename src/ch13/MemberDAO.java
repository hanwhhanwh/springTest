package ch13;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
//import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class MemberDAO {
	private Connection con;
	private PreparedStatement pstmt;
	private DataSource dataFactory;

	public MemberDAO() {
		try {
			Context ctx = new InitialContext();
//			Context envContext = (Context) ctx.lookup("java:/comp/env");
//			dataFactory = (DataSource) envContext.lookup("jdbc/oracle");
			dataFactory = (DataSource) ctx.lookup("java:/comp/env/jdbc/MariaDB");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public List<Member> listMembers() {
		List<Member> list = new ArrayList<>();
		try {
			con = dataFactory.getConnection();
			String query = "SELECT member_id, `password`, member_name, email, join_date FROM MEMBER ORDER BY join_date DESC ";
			System.out.println("prepareStatememt: " + query);
			pstmt = con.prepareStatement(query);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				String id = rs.getString("member_id");
				String pwd = rs.getString("password");
				String name = rs.getString("member_name");
				String email = rs.getString("email");
				Date joinDate = rs.getDate("join_date");
				Member member = new Member();
				member.setId(id);
				member.setPassword(pwd);
				member.setName(name);
				member.setEmail(email);
				member.setJoinDate(joinDate);
				list.add(member);
			}
			rs.close();
			pstmt.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public void addMember(Member member) {
		try {
			Connection con = dataFactory.getConnection();
			String id = member.getId();
			String pwd = member.getPassword();
			String name = member.getName();
			String email = member.getEmail();
			String query = "INSERT INTO MEMBER";
			query += " (member_id, password, member_name, email)";
			query += " VALUES (?,password('" + pwd + "'),?,?)";
			System.out.println("prepareStatememt: " + query);
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, id);
//			pstmt.setString(2, pwd);
			pstmt.setString(2, name);
			pstmt.setString(3, email);
			pstmt.executeUpdate();
			pstmt.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public boolean isDuplicatedID(String id) {
		boolean result = false;
		try {
			Connection con = dataFactory.getConnection();
			String query = "SELECT COUNT(*) AS cnt FROM MEMBER WHERE member_id LIKE ?";
			System.out.println("prepareStatememt: " + query);
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, id);
			ResultSet rs = pstmt.executeQuery();
			rs.next();
			result = rs.getInt(0) > 0;
			pstmt.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
}

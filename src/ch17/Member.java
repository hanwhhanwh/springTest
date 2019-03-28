package ch17;

import java.sql.Date;

public class Member {
	private String id;
	private String password;
	private String name;
	private String email;
	private Date joinDate;
	
	
	public Member() {
		
	}


	public Member(String id, String pwd, String name, String email) {
		this.id = id;
		this.password = pwd;
		this.name = name;
		this.email = email;
	}


	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String pwd) {
		this.password = pwd;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public Date getJoinDate() {
		return joinDate;
	}


	public void setJoinDate(Date joinDate) {
		this.joinDate = joinDate;
	}
}

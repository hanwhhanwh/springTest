package ch13;

import java.sql.Date;

public class Member {
	private String id;
	private String passwordd;
	private String name;
	private String email;
	private Date joinDate;
	
	
	public Member() {
		
	}


	public Member(String id, String pwd, String name, String email) {
		this.id = id;
		this.passwordd = pwd;
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
		return passwordd;
	}


	public void setPasswordd(String pwd) {
		this.passwordd = pwd;
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

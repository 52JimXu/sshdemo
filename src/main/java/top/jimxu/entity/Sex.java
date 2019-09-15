package top.jimxu.entity;

import java.util.HashSet;
import java.util.Set;

public class Sex {
	private Integer id;
	private String sex;
	private Set<User> users = new HashSet<User>();
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public Set<User> getUsers() {
		return users;
	}
	public void setUsers(Set<User> users) {
		this.users = users;
	}
	
	
	
}

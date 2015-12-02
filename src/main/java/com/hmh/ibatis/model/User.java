package com.hmh.ibatis.model;


import org.hibernate.validator.constraints.NotEmpty;

public class User {
	private int id;
	private int state;
	private String nickname;
	private String user_id;
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}
	
	@NotEmpty(message="用户昵称不能为空")
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", state=" + state + ", nickname=" + nickname
				+ "]";
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

}

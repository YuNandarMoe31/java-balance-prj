package com.jdc.balance.security;

import java.io.Serializable;

public class LoginUser implements Serializable {

	private static final long serialVersionUID = 1L;

	private boolean login;

	public void setLogin(boolean login) {
		this.login = login;
	}
	
	public boolean isLogin() {
		return login;
	}
	
	public boolean isManager() {
		return false;
	}
}

package com.jdc.balance.security;

import java.io.Serializable;

public class LoginUser implements Serializable {

	private static final long serialVersionUID = 1L;

	public boolean isLogin() {
		return false;
	}
	
	public boolean isManager() {
		return false;
	}
}

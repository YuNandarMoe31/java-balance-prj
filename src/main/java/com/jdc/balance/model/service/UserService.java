package com.jdc.balance.model.service;

public interface UserService {

	public void changePass(String code, String oldPass, String newPass);

	public String login(String code, String pass);

}
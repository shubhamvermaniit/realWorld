package com.real.service;

import java.util.List;

import com.real.model.User;

public interface UserService {
	public void addUser(User u);
	 User getUserByEmailId(String emailId);
	 User getUserById(String id);
	
	 List<User> getAllUsers();
	 

}

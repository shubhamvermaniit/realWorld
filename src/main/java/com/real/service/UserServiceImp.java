package com.real.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.real.dao.UserDAO;
import com.real.model.User;

@Service
@Transactional
public class UserServiceImp implements UserService
{
private UserDAO userDAO;

public void setUserDAO(UserDAO userDAO) {
	this.userDAO = userDAO;
}
public void addUser(User u) {
	
userDAO.addUser(u);	
}
public User getUserByEmailId(String emailId) {
	
	return userDAO.getUserByEmailId(emailId);
}
public User getUserById(String id) {

	return userDAO.getUserById(id);
}

public List<User> getAllUsers() {

	return userDAO.getAllUsers();
}

	
}

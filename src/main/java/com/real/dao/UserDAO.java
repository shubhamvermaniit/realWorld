package com.real.dao;

import java.util.List;

import com.real.model.User;

public interface UserDAO {
public void addUser(User u);
User getUserByEmailId(String emailId);
User getUserById(String id);
List<User> getAllUsers();
}

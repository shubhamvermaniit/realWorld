package com.real.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.real.model.Authorization;
import com.real.model.User;

@Repository
public class UserDAOImp implements UserDAO 
{

	SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
public void addUser(User u)
{
	Session session=this.sessionFactory.getCurrentSession();
	u.setId(u.getEmailId());
	u.setActive(true);
	Authorization auth=new Authorization();
	auth.setEmailId(u.getEmailId());
	auth.setRole("ROLE_USER");
	
	session.persist(u);
	session.persist(auth);
}
public User getUserByEmailId(String emailId) {
	Session session=this.sessionFactory.getCurrentSession();
User user=(User)session.get(User.class,emailId );
			
	return user;
}
public User getUserById(String id) {
	Session session=this.sessionFactory.getCurrentSession();
	User user=(User)session.get(User.class,id);
	return user;
}
public List<User> getAllUsers() {
	Session session=this.sessionFactory.getCurrentSession();
Query query=session.createQuery("from User");
 List<User> userList=(List<User>)query.list();
	return userList;
}
}

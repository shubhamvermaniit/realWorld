package com.real.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.real.model.Brand;

@Repository
public class BrandDAOImp implements BrandDAO {
	
	SessionFactory sessionFactory;

	
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public boolean addBrand(Brand b) {
	Session s=sessionFactory.getCurrentSession();
	b.setBrandid(b.getBname());
	s.persist(b);
	try{
		return true;
	}
	catch(Exception e)
	{
		e.printStackTrace();
	
		return false;
	}
	}

	public boolean removeBrand(String brandid) {
	Session s=	sessionFactory.getCurrentSession();
	s.delete(getBrandById(brandid));
	try{
		return true;
	}
	catch(Exception e)
	{
		e.printStackTrace();
	
		return false;
	}
	}

	public boolean updateBrand(Brand b) {
	Session s=	sessionFactory.getCurrentSession();
		try
		{
			s.update(b);
			return true;
		}
		catch(Exception e)
		{
			e.printStackTrace();
		return false;
	}
	}

	public List<Brand> getbrands() {
Session s=	sessionFactory.getCurrentSession();
Query q=s.createQuery("from Brand");
List<Brand> brandlist= q.list();
		return brandlist;
	}

	public boolean deleteBrand(Brand b) {
	Session s=sessionFactory.getCurrentSession();
	try{
		s.delete(b);
		return true;
	}
	catch(Exception e)
	{
		e.printStackTrace();
		return false;
	}
	}

	public Brand getBrandById(String Brand) {
		
	Session s=sessionFactory.getCurrentSession();
	
		return (Brand) s.get(Brand.class,Brand);
	}


}

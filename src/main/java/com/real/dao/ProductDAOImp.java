package com.real.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.real.model.Product;

@Repository
public class ProductDAOImp implements ProductDAO {
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
public void addProduct(Product p) {
	Session s=this.sessionFactory.getCurrentSession();
	s.persist(p);
	System.out.println("Data Add Succsesfully");

}
public void updateProduct(Product p) {

	Session session=this.sessionFactory.getCurrentSession();
	session.update(p);
}
public void removeProduct(int id) {

Session session=this.sessionFactory.getCurrentSession();
Product p=(Product) session.load(Product.class,new Integer(id) );
session.delete(p);


}
public List<Product> listProduct() {
Session session=this.sessionFactory.getCurrentSession();
Query query=session.createQuery("from Product");
List<Product> listProduct=query.list();
for(Product p:listProduct)
	System.out.println(p.getProductName());
	
return listProduct;

	

}
public Product getProductById(int id) {
	Session session=this.sessionFactory.getCurrentSession();
	Product p=(Product) session.get(Product.class,new Integer(id));
	return p;
}
}

package com.real.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.real.dao.ProductDAO;
import com.real.model.Product;

@Service

public class ProductServiceImp implements ProductService {
	
	private ProductDAO productDAO;

	public void setProductDAO(ProductDAO productDAO) {
		this.productDAO = productDAO;
	}

@Transactional
	public void addProduct(Product p) {
		this.productDAO.addProduct(p);

		
	}
@Transactional
	public void updateProduct(Product p) {
		this.productDAO.updateProduct(p);
		
	}
@Transactional
	public void removeProduct(int id) {
		this.productDAO.removeProduct(id);
	}
@Transactional
	public List<Product> listProduct() {
		
		return productDAO.listProduct();
	}

@Transactional
	public Product getProductById(int id) {
		
		return this.productDAO.getProductById(id);
	}

}

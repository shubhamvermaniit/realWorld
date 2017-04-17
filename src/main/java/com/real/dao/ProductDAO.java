package com.real.dao;

import java.util.List;

import com.real.model.Product;

public interface ProductDAO {
	public void addProduct(Product p);
	public void updateProduct(Product p);
	public void removeProduct(int id);
	public List<Product> listProduct();
	Product getProductById(int id);

}

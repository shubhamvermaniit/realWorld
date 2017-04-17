package com.real.service;

import java.util.List;

import com.real.model.Product;

public interface ProductService
{
	public void addProduct(Product p);
	public void updateProduct(Product p);
	public void removeProduct(int id);
	public List<Product> listProduct();
Product getProductById(int id);
}

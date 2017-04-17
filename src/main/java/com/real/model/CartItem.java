package com.real.model;

import java.io.Serializable;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

public class CartItem implements Serializable {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int Itemid;
	@ManyToOne
	@JoinColumn(name="cartId")
	private Cart cart;
	@ManyToOne
	@JoinColumn(name="id")
	private Product product;
	
	private int quantity;
	private double price;
	public int getItemid() {
		return Itemid;
	}
	public void setItemid(int itemid) {
		Itemid = itemid;
	}
	public Cart getCart() {
		return cart;
	}
	public void setCart(Cart cart) {
		this.cart = cart;
	}
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	
}

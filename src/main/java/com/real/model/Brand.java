package com.real.model;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class Brand {
@Id
String brandid;
@Column(unique=true)
String bname;
String bdesc;
@OneToMany(mappedBy="brand",fetch=FetchType.EAGER)
Set<Product>products;
public String getBrandid() {
	return brandid;
}
public void setBrandid(String brandid) {
	this.brandid = brandid;
}
public String getBname() {
	return bname;
}
public void setBname(String bname) {
	this.bname = bname;
}
public String getBdesc() {
	return bdesc;
}
public void setBdesc(String bdesc) {
	this.bdesc = bdesc;
}
public Set<Product> getProducts() {
	return products;
}
public void setProducts(Set<Product> products) {
	this.products = products;
}


}

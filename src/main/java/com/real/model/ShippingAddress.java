package com.real.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
@Entity
public class ShippingAddress implements Serializable{
@Id
@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int shippingAddressId;
private String AppartNumber;
private String City;
private String State;
private String Country;
private String HouseNo;
@OneToOne
private Customer customer;
public int getShippingAddressId() {
	return shippingAddressId;
}
public void setShippingAddressId(int shippingAddressId) {
	this.shippingAddressId = shippingAddressId;
}
public String getAppartNumber() {
	return AppartNumber;
}
public void setAppartNumber(String appartNumber) {
	AppartNumber = appartNumber;
}
public String getCity() {
	return City;
}
public void setCity(String city) {
	City = city;
}
public String getState() {
	return State;
}
public void setState(String state) {
	State = state;
}
public String getCountry() {
	return Country;
}
public void setCountry(String country) {
	Country = country;
}
public String getHouseNo() {
	return HouseNo;
}
public void setHouseNo(String houseNo) {
	HouseNo = houseNo;
}
public Customer getCustomer() {
	return customer;
}
public void setCustomer(Customer customer) {
	this.customer = customer;
}
}

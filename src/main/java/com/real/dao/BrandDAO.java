package com.real.dao;

import java.util.List;

import com.real.model.Brand;

public interface BrandDAO {
	boolean addBrand(Brand b);
	boolean removeBrand(String brandid);
	boolean updateBrand(Brand b);
	List<Brand> getbrands();
	boolean deleteBrand(Brand b);
	Brand getBrandById(String Brand);

}

package com.real.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.real.dao.BrandDAO;
import com.real.model.Brand;

@Service
@Transactional
public class BrandServiceImp implements BrandService {
	
	BrandDAO brandDAO;

	public void setBrandDAO(BrandDAO brandDAO) {
		this.brandDAO = brandDAO;
	}

	public boolean addBrand(Brand b) {
		
		return brandDAO.addBrand(b);
	}

	public boolean removeBrand(String brandid) {
	
		return brandDAO.removeBrand(brandid);
	}

	public boolean updateBrand(Brand b) {
		
		return brandDAO.updateBrand(b);
	}

	public List<Brand> getbrands() {
		
		return brandDAO.getbrands();
	}

	public boolean deleteBrand(Brand b) {
	
		return brandDAO.deleteBrand(b);
	}

	public Brand getBrandById(String Brand) {
		
		return brandDAO.getBrandById(Brand);
	}

		

}

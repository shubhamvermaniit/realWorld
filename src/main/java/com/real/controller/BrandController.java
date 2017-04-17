package com.real.controller;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.real.model.Brand;
import com.real.service.BrandService;

@Controller
public class BrandController{ 
	
	BrandService brandService;
	@Autowired(required=true)
	public void setBrandService(BrandService brandService) {
		this.brandService = brandService;
	}
	@RequestMapping(value="/adminBrand")
	public String addBrand(Model model)
	{
		model.addAttribute("brand",new Brand());
		model.addAttribute("brandlist",brandService.getbrands());
		return "admin/addBrand";
		
	}
	@RequestMapping(value="/addbrand",method=RequestMethod.POST)
	public  String insertbrand(@Valid @ModelAttribute("brand") Brand b,BindingResult result,Model model,HttpServletRequest request)
	{
		if(result.hasErrors())
		{
			model.addAttribute("brandlist",brandService.getbrands());
		}
		else
			
		{
			if(b.getBrandid()==null ||b.getBrandid().isEmpty())	{
			brandService.addBrand(b);
			}
			else
			{
				brandService.updateBrand(b);
			}
		}
		return "redirect:/adminBrand";
		
	}
	@RequestMapping("/deletebrand/{bid}")
	public String deleteBrand(@PathVariable("bid") String bid)
	{
		this.brandService.removeBrand(bid);
		return "redirect:/adminBrand";
	}
	@RequestMapping("/editbrand/{bid}")
	public String editBrand(@PathVariable("bid") String bid,Model model)
	{
		model.addAttribute("brand",this.brandService.getBrandById(bid));
		model.addAttribute("brandlist",this.brandService.getbrands());
		return "/admin/addBrand";
		
	}
	

}

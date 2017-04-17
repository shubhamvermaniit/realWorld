package com.real.controller;

import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.real.model.Product;
import com.real.service.ProductService;

import java.util.ArrayList;

@Controller
public class ProductController {
	private static final ModelAndView ModelView = null;
	ProductService productService;
	private Product product;
@Autowired(required=true)
	public void setProductService(ProductService productService) {
		this.productService = productService;
	}
@RequestMapping(value= "/user/{sort}" , method=RequestMethod.GET)
public ModelAndView dispaly(@PathVariable("sort") String key, Model model)
{
model.addAttribute("itemlist",this.productService.listProduct());

System.out.println("now we are filtering from list");
List<Product> filterlist=new ArrayList<Product>();
List<Product> list=productService.listProduct();
Iterator<Product> itr=list.iterator();
while(itr.hasNext())
{
	Product p=itr.next();
	if(p.getBrandid().equals(key))
		filterlist.add(p);
}
for(Product p:filterlist)
{
	System.out.println(p.getId());
	System.out.println(p.getProductName());
}
String json=new Gson().toJson(filterlist);
ModelAndView mv=new ModelAndView("Product");
mv.addObject("product",json);
return mv;
}
@RequestMapping("/user/more/{id}")
public String detail(@PathVariable("id") int id,Model model)
{
model.addAttribute("product",this.productService.getProductById(id));
return "productdescription";
}
}







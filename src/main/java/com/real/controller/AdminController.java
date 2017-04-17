package com.real.controller;

import java.io.FileOutputStream;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import com.real.model.Product;
import com.real.service.BrandService;
import com.real.service.ProductService;

@Controller
public class AdminController {

	
@Autowired
private HttpSession session;	
private ProductService productService;
@Autowired(required=true)
public void setProductService(ProductService productService) {
	this.productService = productService;	
}

BrandService brandService;
@Autowired(required=true)
public void setBrandService(BrandService brandService) {
	this.brandService = brandService;
}

@RequestMapping(value="/adminHome")
public String adminHome(Model model)
{
	System.out.println("on admin Home Page");
	return "admin/adminHome";
}

@RequestMapping(value="/adminProduct")
public String add(Model model)
{
	System.out.println("on admin page");
	session.setAttribute("listbrand",brandService.getbrands());
	model.addAttribute("product",new Product());
	model.addAttribute("itemlist",productService.listProduct());
	return "admin/AdminP";
}

@RequestMapping(value="/addProduct",method=RequestMethod.POST)
public String insertProduct(@Valid @ModelAttribute("product") Product p,BindingResult result,Model model,HttpServletRequest request)
{  System.out.println("product is going");
	if(result.hasErrors())
	{
		 System.out.println("error");
		 System.out.println("in Error");
		model.addAttribute("itemlist",productService.listProduct());
		return "redirect:/adminProduct";
	}
	else
	{
		if(p.getId()==0)
		{
			System.out.println("product is going to add"+p.getProductName());
			productService.addProduct(p);
			System.out.println("product is added");
			MultipartFile file=p.getImage();
			HttpSession session=request.getSession();
			ServletContext context=session.getServletContext();
			String filelocation=context.getRealPath("/resources/images/");
			System.out.println(filelocation);
			String imagenm=filelocation+"\\"+p.getId()+".jpg";
			System.out.println(imagenm);
			try{
			byte b[]=file.getBytes();
			FileOutputStream fos=new FileOutputStream(imagenm);
			fos.write(b);
			fos.close();
			}
			catch(Exception e){}
		}
		else
		{
			productService.updateProduct(p);
		}	
		
	}
	return "redirect:/adminProduct";
}
@RequestMapping("/deleteProduct/{id}")
public String deleteProduct(@PathVariable("id") int id)
{
	this.productService.removeProduct(id);
	return "redirect:/adminProduct";
}

@RequestMapping("/editProduct/{id}")
public String updateProduct(@PathVariable("id") int id,Model model)
{
model.addAttribute("product",this.productService.getProductById(id));
model.addAttribute("itemlist",this.productService.listProduct());
return "admin/AdminP";

}






}

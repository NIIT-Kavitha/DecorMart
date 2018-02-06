package com.controller;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.Model.Category;
import com.Model.Product;
import com.Model.Supplier;
import com.Service.CategoryService;
import com.Service.ProductService;
import com.Service.SupplierService;

@Controller
public class AdminController {
	
	@Autowired
	CategoryService categoryService;
	
	@Autowired
	SupplierService supplierService;
	
	@Autowired
	ProductService productService;

@RequestMapping(value="/savecategory" , method=RequestMethod.POST)
public ModelAndView saveCategory(@RequestParam("catId") int catId,@RequestParam("catName") String catName){
	
	ModelAndView m=new ModelAndView();
	Category category=new Category();
	category.setCatId(catId);
	category.setCatName(catName);
	categoryService.insertCategory(category);
	m.setViewName("AdminAddForm");
	return m;
}
	
@RequestMapping(value="/savesupplier" , method=RequestMethod.POST)
public ModelAndView saveSupplier(@RequestParam("supId") int supId,@RequestParam("supName") String supName){
	
	ModelAndView m=new ModelAndView();
	Supplier supplier=new Supplier();
	supplier.setSupId(supId);
	supplier.setSupName(supName);
	supplierService.insertSupplier(supplier);
	m.setViewName("AdminAddForm");
	return m;
}

@RequestMapping(value="/saveproduct" , method=RequestMethod.POST)
public String saveProduct(HttpServletRequest request,@RequestParam("file")MultipartFile file){
	Product product=new Product();
	product.setPname(request.getParameter("pname"));
	product.setPdesc(request.getParameter("pdesc"));
	product.setPrice(Float.parseFloat(request.getParameter("pprice")));
	product.setStock(Integer.parseInt(request.getParameter("stock")));
	
	String filepath=request.getSession().getServletContext().getRealPath("/");
	String filename=file.getOriginalFilename();
	//product.setProductimage(filename);
	productService.insertProduct(product);
	try{
		byte[] imagebyte=file.getBytes();
		BufferedOutputStream fos=new BufferedOutputStream(new FileOutputStream(filepath+"/resources/"+filename));
	    fos.write(imagebyte);
	    fos.close();
	}
	catch(Exception e){
		System.out.println(e.getMessage());
	}
	return "AdminAddForm";
}

}

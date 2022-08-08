package com.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.bean.Product;
import com.service.ProductService;

@Controller
public class ProductController {
	@Autowired
	ProductService productservice;
	
	@RequestMapping(value = "AddNewProduct",method = RequestMethod.POST)
	public ModelAndView AddNewProduct(HttpServletRequest req, Product prd) {
		
		String name = req.getParameter("name");
		String category = req.getParameter("category");
		String image= req.getParameter("image");
		int price= Integer.parseInt(req.getParameter("price"));
		int quantity = Integer.parseInt(req.getParameter("quantity"));
		String status= "1";
		
		prd.setName(name);
		prd.setCategory(category);
		prd.setImage(image);
		prd.setPrice(price);
		prd.setQuantity(quantity);
		prd.setStatus(status);
	
		String result = productservice.AddNewProduct(prd);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("AddNewProduct.jsp");
		mav.addObject("msg", result);
		return mav;
	}
	
	@RequestMapping(value = "getAllProducts",method = RequestMethod.GET)
	public ModelAndView getAllProducts() {
	
		List<Product> products = productservice.getAllProducts();
		ModelAndView mav = new ModelAndView();
		mav.addObject("ViewAllProducts", products);
		mav.setViewName("allProducts.jsp");
		
		return mav;
	}
	
	@RequestMapping(value = "getProductsByCategory",method = RequestMethod.GET)
	public ModelAndView getProductsByCategory(HttpServletRequest req) {
		String category = req.getParameter("category");
		
		List<Product> products = productservice.getProductByCategory(category);
		ModelAndView mav = new ModelAndView();
		mav.addObject("ViewAllProducts", products);
		mav.setViewName("allProducts.jsp");
		return mav;
	}
	
	@RequestMapping(value = "updateProduct",method = RequestMethod.POST)
	public ModelAndView updateProduct(HttpServletRequest req, Product prd) {
		int id = Integer.parseInt(req.getParameter("id"));
		int price =Integer.parseInt(req.getParameter("price"));
		int quantity = Integer.parseInt(req.getParameter("quantity"));
		String name = req.getParameter("name");
		String category = req.getParameter("category");
		
		
		prd.setQuantity(quantity);
		prd.setCategory(category);
		prd.setName(name);
		prd.setPrice(price);
		
		String result = productservice.UpdateProductData(prd);
		ModelAndView mav = new ModelAndView();
		mav.addObject("msg", result);
		mav.setViewName("updateProduct.jsp");
		return mav;
	}
	
}

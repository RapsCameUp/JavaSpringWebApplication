package com.service;

import java.util.List;
import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bean.Product;
import com.repository.ProductRepository;

@Service
public class ProductService {
	@Autowired
	ProductRepository productrepository;
	
	public List<Product> getAllProducts() {
		return productrepository.findAll();
	}
	
	public String AddNewProduct(Product product) {
		productrepository.save(product);
		return "Saved successfully";
	}
	
	public String UpdateProductData(Product product) {
		Optional<Product> result = productrepository.findById(product.getId());
		
		if(result.isPresent()) {
			Product prd = result.get();
			prd.setPrice(product.getPrice());
			prd.setQuantity(product.getQuantity());
			prd.setImage(product.getImage());
			prd.setCategory(prd.getCategory());
			prd.setStatus(prd.getStatus());
			
			productrepository.saveAndFlush(prd);
			return "Updated successfully";
		}else {
			return "Something went wrong. Please try again.";
		}
	}
	
	public List<Product> getProductByCategory(String category){
		return productrepository.getProductByCategory(category);
	}
}

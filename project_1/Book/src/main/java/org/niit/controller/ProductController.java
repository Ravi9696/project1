

package org.niit.controller;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.niit.model.Product;
import org.niit.service.ProductService;
@Controller
public class ProductController {
@Autowired
private ProductService productService;
public  ProductController()
{
	System.out.println("ProductController instantiated");
}
@RequestMapping("/getproductform")
public String getProductForm(Model model){
	model.addAttribute("product",new Product());
	return "productform";
}
@RequestMapping("/saveproduct")
public String saveProduct(@ModelAttribute(name="product") Product product){
productService.saveProduct(product);
return "success";
}
@RequestMapping("/all/product/getallproducts")
public String getAllproducts(Model model){
	List<Product> products=productService.getAllProducts();
	model.addAttribute("products",products);
	return "productlist";
}
@RequestMapping("/all/product/viewproduct/{id}")
public String getproductById(int id,Model model){
	model.addAttribute("product",product());
	return "viewproduct";
	}
private Object product() {
	// TODO Auto-generated method stub
	return null;
}
@RequestMapping("/admin/product/deleteproduct/{id}")
public String deleteProductbyId(@PathVariable int id)
{
	productService.deleteProduct(id);
	return "redirect:/all/product/getallproducts";
	}
@RequestMapping("/admin/product/geteditform/{id}")
public String getEditForm(@PathVariable int id,Model model)
{
	Product product=productService.getProductById(id);
	model.addAttribute("ProductObj",product);
	return "editform";
}
@RequestMapping("/admin/product/editproduct")
public String editProduct(@ModelAttribute(name="productObj") Product product)
{
	productService.updateProduct(product);
	return "redirect:/all/product/getallproducts";
}	
}

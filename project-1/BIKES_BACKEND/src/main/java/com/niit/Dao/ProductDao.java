package com.niit.Dao;
import java.util.List;

import com.niit.model.Category;
import com.niit.model.Product;
public interface ProductDao {
	void saveProduct(Product product);
Product getProductById(int id);
	void deleteProduct (Product product);
void editProduct(Product product);
List<Product> getAllProducts();
List<Category> getAllCategories();


}

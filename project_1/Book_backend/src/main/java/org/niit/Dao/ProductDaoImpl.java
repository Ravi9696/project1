package org.niit.Dao;
import java.util.List;
import  org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.niit.model.Product;
@Repository
public class ProductDaoImpl  implements ProductDao {
	public ProductDaoImpl()
	{
		System.out.println("ProductdaoImpl object is created");
	}
	@Autowired
	private SessionFactory sessionFactory;
	public void saveProduct(Product product){
	Session session=sessionFactory.getCurrentSession();
	session.save(product);
	}
	public List<Product>getAllProducts(){
		Session session=sessionFactory.getCurrentSession();
			Query query=session.createQuery("from Product");
		List<Product>products=query.list();
		return products;
		
	}
public  Product getProductById(int id){
	Session session=sessionFactory.getCurrentSession();
	Product product=(Product)session.get(Product.class, id);
return product;
}

public void editProduct(Product product){
Session session=sessionFactory.getCurrentSession();
session.update(product);
}
public void deleteProduct(Product product) {
	Session session=sessionFactory.getCurrentSession();	
	session.delete(product);
}
}


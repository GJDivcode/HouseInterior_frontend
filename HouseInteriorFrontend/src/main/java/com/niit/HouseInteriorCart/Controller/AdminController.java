package com.niit.HouseInteriorCart.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.HouseInterior.DAO.CategoryDAO;
import com.niit.HouseInterior.DAO.ProductDAO;
import com.niit.HouseInterior.DAO.SupplierDAO;
import com.niit.HouseInterior.model.Category;
import com.niit.HouseInterior.model.Product;
import com.niit.HouseInterior.model.Supplier;


public class AdminController {
	
	@Autowired
	private Product product;
	
	@Autowired
	private Category category;
	
	@Autowired
	private Supplier supplier;
	
	
	@Autowired
	private ProductDAO productdao;
	
	
	@Autowired
	private CategoryDAO categorydao;
	
	@Autowired
	private SupplierDAO supplierdao;
	
	@RequestMapping("/manageCategories")
	public ModelAndView categories(){
		ModelAndView mv=new ModelAndView();
		mv.addObject("category", category);
		mv.addObject("isAdminClickedCategories","true");
		mv.addObject("categoryList",categorydao.listcategory());
		return mv;
	}
		
		@RequestMapping("/manageProducts")
		public ModelAndView products(){
			ModelAndView mv=new ModelAndView();
			mv.addObject("product", product);
			mv.addObject("isAdminClickedProducts","true");
			mv.addObject("productList",productdao.listproduct());
			return mv;
		
		}
			@RequestMapping("/manageSuppliers")
			public ModelAndView suppliers(){
				ModelAndView mv=new ModelAndView();
				mv.addObject("supplier", supplier);
				mv.addObject("isAdminClickedSuppliers","true");
				mv.addObject("supplierList",supplierdao.listsupplier());
				return mv;
			
		
		
		
		
	}
	
	
	

}

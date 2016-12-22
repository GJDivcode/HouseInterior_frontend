package com.niit.HouseInteriorCart.Controller;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.HouseInterior.DAO.CategoryDAO;
import com.niit.HouseInterior.DAO.ProductDAO;
import com.niit.HouseInterior.DAO.SupplierDAO;
import com.niit.HouseInterior.DAO.UserdetailDAO;
import com.niit.HouseInterior.model.Category;
import com.niit.HouseInterior.model.Product;
import com.niit.HouseInterior.model.Supplier;
import com.niit.HouseInterior.model.Userdetail;

public class userController {
	@Autowired
	Userdetail userdetail;
	
	
	@Autowired
	private CategoryDAO categoryDAO;
	
	@Autowired
	private UserdetailDAO userdetailDAO;
	
	@Autowired
	private Category category;
	
	@Autowired
	private Supplier supplier;
	
	@Autowired
	private SupplierDAO supplierDAO;
	
	@Autowired
	private Product product;
	
	@Autowired
	private ProductDAO productDAO;


	
	@SuppressWarnings("unused")
	@Autowired
	private HttpSession session;
	
	
	@RequestMapping("/login")
	public ModelAndView login(@RequestParam(value="name")String Userid,
			@RequestParam(value="password")String password,HttpSession session){
		
		ModelAndView mv = new ModelAndView("/adminHome");
		userdetail=userdetailDAO.isValiduser(Userid, password);
		
		if(userdetail!=null){
			userdetail=userdetailDAO.get(Userid);
			session.setAttribute("loggedInUser",userdetail.getName());
			session.setAttribute("loggedInUserID",userdetail.getUserid());
			session.setAttribute("userdetail", userdetail);
			
			if(userdetail.getRole().equals("Role_Admin")){
				mv.addObject("isAdmin","true");
				/*session.setAttribute("categoryList",categoryDAO.listcategory());
				session.setAttribute("supplierList",supplierDAO.listsupplier());*/
				/*session.setAttribute("productList",productDAO.listproduct());*/
				
				/*session.setAttribute("category",category);*/
				/*session.setAttribute("product",product);*/
				/*session.setAttribute("supplier",supplier);*/
				
			}else{
		            mv.addObject("isAdmin","false" );
		            
					
			}					
			}
			
		
		return mv;
	}
	
	
	
	
	

}

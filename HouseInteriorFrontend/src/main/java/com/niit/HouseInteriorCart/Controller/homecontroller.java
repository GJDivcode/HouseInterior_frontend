package com.niit.HouseInteriorCart.Controller;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;  
import org.springframework.web.servlet.ModelAndView;

import com.niit.HouseInterior.DAO.UserdetailDAO;
import com.niit.HouseInterior.model.Userdetail;

@Controller
public class homecontroller {

	@Autowired
	private Userdetail userdetail;
	
	@Autowired
	private UserdetailDAO userdetaildao;
	
	
	@RequestMapping("/")
	public ModelAndView onLoad(HttpSession session){
		System.out.println("landing page");
		ModelAndView mv=new ModelAndView("/index");
	    return mv;
	}
	
	@RequestMapping("/login")
	public ModelAndView loginhere(){
		ModelAndView mv=new ModelAndView("/login");
		mv.addObject("isUserClickedLoginHere","true");
		return mv;
	}
	/*@RequestMapping("/Register")
	public String addProduct(Model model) {
      model.addAttribute("userdetail", userdetail);
        return "Register";
    }*/
	
	 @RequestMapping(value="/user/Register",  method = RequestMethod.POST) 
	 public ModelAndView registeruser(@ModelAttribute Userdetail userdetail)
	 {
	   /* ModelAndView mv=new ModelAndView("/index");
		 if(userdetaildao.get(userdetail.getUserid())==null){
			 userdetaildao.SaveorUpdate(userdetail);
			 mv.addObject("successMessage", "You Successfully Logged In"); 
		 } else {
			mv.addObject("msg", "User Exists With this ID");
		}
			return mv;this code is working      */
		 
		 
		 userdetaildao.SaveorUpdate(userdetail);
		 return new ModelAndView("redirect:/");
		 
	 }
		 
		  
	
	@RequestMapping("/Register")
	public ModelAndView registerHere(){
		ModelAndView mv=new ModelAndView("/Register");
		mv.addObject("userdetail",userdetail);
		mv.addObject("isUserClickedRegisterHere","true");
		return mv;
	}
}
	


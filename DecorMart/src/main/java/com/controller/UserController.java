package com.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.Model.User;
import com.Service.UserService;

@Controller
public class UserController {

	@Autowired
	private UserService userService;
 
	@RequestMapping("/")
	public ModelAndView index()
	{
		ModelAndView m=new ModelAndView();
		m.addObject("user",new User());
		m.setViewName("index");
		return m;
	}
	/*@RequestMapping("/login")
	public String getLoginForm(Model model)
	{
		model.addAttribute("user", new User());
		return "Login";
	}*/

	/*@RequestMapping("/login")
	public String login()
	{
		return "Login";
	}
	*/
	@RequestMapping("/login")
    public String login(@RequestParam(value="error",required=false) String error,
    		@RequestParam(value="logout",required=false) String logout, Model model){
    		if(error!=null)
    	model.addAttribute("error","Invalid email and password");
    	
    	if(logout!=null)
    		model.addAttribute("logout","You have logged out successfully");
    	return "Login";
    }

   @RequestMapping("/logout")
   public String logout()
   {
	   return "redirect:/";
   }
   
   @RequestMapping("/userLog")
   public String success(){
	   System.out.println("User Logged");
	   return "redirect:/";
   }
   
  /* @RequestMapping("/accessDenied")
   public String failure(){
	   return "accessDenied";
   }*/
	@RequestMapping("/signup")
	public String getRegistrationForm(Model model)
	{
		model.addAttribute("user", new User());
		return "Signup";
	}

	@RequestMapping(value="/insertUser" ,method=RequestMethod.POST)
	public String insertUser(@Valid @ModelAttribute("user") User user, BindingResult result, Model model)
	{
		user.setRole("ROLE_USER");
		user.setEnabled(false);
		if(result.hasErrors())
			return "Signup";
		
		
		List<User> users=userService.getAllUsers();
		
		String email=user.getEmail();
	System.out.println("Username: "+user.getName());
	System.out.println("E-Mail: "+user.getEmail());
		for(User c:users)
		{
			if(c.getEmail().equals(email))
			{
				model.addAttribute("duplicateEmail", " Email Id already exists");
				return "Signup";
				
			}
		}
	
		userService.addUser(user);
		return "redirect:/login";
	}
}

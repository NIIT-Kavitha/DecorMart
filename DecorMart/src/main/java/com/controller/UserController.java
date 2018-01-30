package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.Model.User;
import com.Service.UserService;

@Controller
public class UserController {

	@Autowired
	private UserService userService;
 
	@RequestMapping("/signup")
	public String getRegistrationForm(Model model)
	{
		model.addAttribute("user", new User());
		return "Signup";
	}

	@RequestMapping(value="InserUser" ,method=RequestMethod.POST)
	public String insertUser(@ModelAttribute("user") User user, BindingResult result, Model model)
	{
		if(result.hasErrors())
			return "Signup";
		List<User> users=userService.getAllUsers();
		String email=user.getEmail();
	
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

    /*@RequestMapping(value = "/signup", method = RequestMethod.GET)
    public ModelAndView newUser(ModelAndView model) {
        User user = new User();
        model.addObject("user", user);
        model.setViewName("Signup");
        return model;
    }
 
    @RequestMapping(value = "/saveUser", method = RequestMethod.POST)
    public ModelAndView saveEmployee(@ModelAttribute User user) {
        if (user.getEmail() == null) { // if employee id is 0 then creating the
            // employee other updating the employee
            userService.addUser(user);
        } else {
            userService.updateUser(user);
        }
        return new ModelAndView("redirect:/");
    }*/
}

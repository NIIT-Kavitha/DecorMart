package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class IndexController {

@RequestMapping("/adminadd")
public String adminadd()
{
	return "AdminAddForm";
}
}


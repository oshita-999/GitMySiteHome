package com.example.app.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class HomeController {
@GetMapping
public String list() {
	return "home";
}

@PostMapping
public String add() {
	return "add";
}

@GetMapping
public String edit() {
	return "edit";
}


}

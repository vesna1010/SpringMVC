package college.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String renderHomePage() {
		return "home";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String renderLoginPage() {
		return "loginForm";
	}

	@RequestMapping(value = "/denied", method = RequestMethod.GET)
	public String renderDeniedPage() {
		return "denied";
	}

}


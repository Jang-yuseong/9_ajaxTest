package global.sesoc.test9;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	@RequestMapping("/")
	public String ajaxview() {
		return "index";
	}
	
	@RequestMapping("/next")
	public String next() {
		return "example3";
	}
}

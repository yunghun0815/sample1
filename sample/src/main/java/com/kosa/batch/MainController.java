package com.kosa.batch;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {
	@GetMapping("/")
	public String main() {
		return "home";
	}
	
	@GetMapping("/batch/management")
	public String batchManagement() {
		return "batchManagement";
	}
	
	@GetMapping("/log/group")
	public String groupLog() {
		return "groupLog";
	}
	
	@GetMapping("/log/program")
	public String programLog() {
		return "programLog";
	}
}

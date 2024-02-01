package com.example.demo;

import java.util.List;
import java.awt.GridLayout;
import javax.swing.JButton;
import javax.swing.JFrame;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class TicTacToeApplication {

	public static void main(String[] args) {
		SpringApplication.run(TicTacToeApplication.class, args);
	}
	
//	@GetMapping
//	public List<String> hello() {
//		return List.of("Hello World","1.Liste");
//	}

	@RestController
	class HelloController{
		@GetMapping("/")
		String hello() {
			return "Hello";
		}
	}

}

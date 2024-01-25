package com.example.demo;

import java.util.List;
import java.awt.GridLayout;
import javax.swing.JButton;
import javax.swing.JFrame;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
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
	
//	   public void main() {
//	        JFrame frame = new JFrame("Tic Tac Toe");
////	        JPanel panel = new JPanel();
////	        frame.add(panel);
//
//	        GridLayout grid = new GridLayout(3, 3);
//
//	        frame.setVisible(true);
//	        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
//	        frame.setSize(600, 600);
//	        frame.setLayout(grid);
//	        frame.setResizable(false);
//
//	        JButton button1 = new JButton();
//	        JButton button2 = new JButton();
//	        JButton button3 = new JButton();
//	        JButton button4 = new JButton();
//	        JButton button5 = new JButton();
//	        JButton button6 = new JButton();
//	        JButton button7 = new JButton();
//	        JButton button8 = new JButton();
//	        JButton button9 = new JButton();
//
//	        frame.add(button1);
//	        frame.add(button2);
//	        frame.add(button3);
//	        frame.add(button4);
//	        frame.add(button5);
//	        frame.add(button6);
//	        frame.add(button7);
//	        frame.add(button8);
//	        frame.add(button9);
//	    }

}

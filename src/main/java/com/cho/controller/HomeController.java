package com.cho.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cho.dto.BoardVO;
import com.cho.service.BoardService;

@Controller
public class HomeController {
	@Autowired
	private BoardService boardService;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);		
		String formattedDate = dateFormat.format(date);		
		model.addAttribute("serverTime", formattedDate );		
		return "home";
	}
	
	//입력폼으로 가기
	@RequestMapping("/main")
	public String inputForm(Model model) throws Exception{
		List<BoardVO> list = boardService.selectBoard();
			
		model.addAttribute("list", list);
		
		return "main";
	}
	@RequestMapping("/post")
	public String inputForm2(){	
		return "post";
	}
	
	
	//입력하기	
	@RequestMapping("/view")
	public String insertdao(@RequestParam("title") String title,
							@RequestParam("content") String content,
							@RequestParam("author") String author) throws Exception{
		
		Map<String,String> boardmap = new HashMap<String, String>();
		boardmap.put("title",title);
		boardmap.put("content",content);
		boardmap.put("author",author);
		boardService.insertBoard(boardmap);
		
		return "redirect:/main";
	}
	
	
	
}

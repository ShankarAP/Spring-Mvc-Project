package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import dao.User_dao;
import dto.User_dto;

@Controller
public class User_controller 
{
		@Autowired
		User_dao dao;
		@RequestMapping("/insert")
		@ResponseBody
		public String insert(@ModelAttribute User_dto dto) {
			dao.insert(dto);
			System.out.println(dto);
			return "data inserted scuessfully";
			
	}
	}


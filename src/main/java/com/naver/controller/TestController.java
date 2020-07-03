package com.naver.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.domain.MemberDTO;

@Controller
@RequestMapping("rest")
public class TestController {
	
	@RequestMapping(value = "/rt1", method = RequestMethod.GET)
	public void rt1() {
	
	}
	
	@RequestMapping(value = "/rt2", method = RequestMethod.GET)
	public void rt2() {
		
	}
	
	@RequestMapping(value = "rt3")
	public void rt3() {
		
	}
	
	@RequestMapping(value = "rt4")
	public void rt4(Model model) {
		System.out.println("rt4 +++++");
		List<MemberDTO> list = new ArrayList<MemberDTO>();
		list.add(new MemberDTO("m001", "kim001", 12, "1"));
		list.add(new MemberDTO("m002", "kim002", 13, "1"));
		list.add(new MemberDTO("m003", "kim003", 13, "1"));
		
		model.addAttribute("list", list);
	}
	
}
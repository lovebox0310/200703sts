package com.naver.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.domain.DepartDTO;
import kr.co.service.DepartService;

@Controller
@RequestMapping("depart")
public class DepartController {
	
	@Autowired
	private DepartService departService; 
	
	@RequestMapping(value = "/insert", method = RequestMethod.GET)
	public String insert() {
		return "/depart/insert";
	}
	
	@RequestMapping(value = "/insert", method = RequestMethod.POST)
	public String insert(DepartDTO dto) {
		departService.insert(dto);
		return "redirect:/depart/list";
	}
	
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String list(Model model) {
		List<DepartDTO> list = departService.list();
		model.addAttribute("list", list);
		return "/depart/list";
	}
	
	@RequestMapping(value = "/read/{did}")
	public String read(@PathVariable("did") String did, Model model) {
		DepartDTO dto = departService.read(did);
		model.addAttribute("dto", dto);
		return "/depart/read";
	}
	
	@RequestMapping(value = "/update/{did}", method = RequestMethod.GET)
	public String updateui(@PathVariable("did") String did, Model model) {
		DepartDTO dto = departService.updateui(did);
		model.addAttribute("dto", dto);
		return "/depart/update";
	}
	
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String update(DepartDTO dto) {
		departService.update(dto);
		return "redirect:/depart/list";
	}
	
	@RequestMapping(value = "/delete/{did}")
	public String delete(@PathVariable("did") String did) {
		departService.delete(did);
		return "redirect:/depart/list";
	}
}

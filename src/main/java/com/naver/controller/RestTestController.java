package com.naver.controller;

import java.util.List;
import java.util.Map;

import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("rest")
public class RestTestController {
	
	@RequestMapping(value = "/rt1", method = RequestMethod.POST)
	public String rt1(@RequestBody String test1) {
		System.out.println(test1);
		return test1;
	}
	
	@RequestMapping(value = "/rt2", method = RequestMethod.POST)
	public Map<String, Object> rt2(@RequestBody Map<String, Object> map) {
		System.out.println(map);
		return map;
	}
	
	@RequestMapping(value = "/rt3", method = RequestMethod.POST)
	public String rt3(@RequestBody Map<String, Object> map) {
//		Object obj = map.get("test4");
//		System.out.println(obj);
		List<Map<String, Object>> list = (List<Map<String, Object>>) map.get("test4");
		
		for (Map<String, Object> m : list) {
			System.out.println("================");
			System.out.println(m.get("id"));
			System.out.println(m.get("name"));
			System.out.println(m.get("age"));
			System.out.println(m.get("name"));
			System.out.println("================");
		}
		
		return "hello";
	}
	
	@RequestMapping(value = "/rt4", method = RequestMethod.POST)
//	public String rt4(@RequestBody String, liststr) {
	public String rt4(@RequestBody Map<String, Object> map) {
//		System.out.println(liststr);
		
//		Object obj = map.get("liststr");
//		System.out.println(obj);
		
		List<Map<String, Object>> list = (List<Map<String, Object>>) map.get("liststr");
		for (Map<String, Object> m : list) {
			System.out.println("===================");
			System.out.println(m.get("id"));
			System.out.println(m.get("name"));
			System.out.println(m.get("age"));
			System.out.println(m.get("name"));
			System.out.println("===================");
			
		}
		return "rt4 Hello";
	}
	
}

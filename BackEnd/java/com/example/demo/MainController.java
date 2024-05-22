package com.example.demo;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.ResponseEntity;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.http.HttpStatus;
import com.example.demo.Member.MemberEntity;
import com.example.demo.Member.MemberDTO;
import com.example.demo.Member.MemberService;

import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;


@Controller
@RequiredArgsConstructor
public class MainController {
	
	@Autowired
    MapDao mapDao;
	
	@Autowired
	CCTVDao CCTVDao;
	
	private final MemberService memberService;
    
	@RequestMapping(value = "/", method = RequestMethod.GET)
    public String start() {
        return "Login";
    }
	


	@PostMapping(value = "Login")
    public String login(@ModelAttribute MemberDTO memberDTO, HttpSession session) {
        MemberDTO loginResult = memberService.login(memberDTO);
        if (loginResult != null) {
            // login 성공
            session.setAttribute("Id", loginResult.getId());
            return "Home";
        } else {
            // login 실패
            return "Login";
        }
    }


	

    @PostMapping(value = "/Home")
    public String homePage(@RequestParam("productcode") String productcode, Model model) {//
    	return "Home";
    }
	
    
    @GetMapping(value = "/Home")
    public String homePage2(Model model) {//
        List<Map> maps = mapDao.selectAll();
        model.addAttribute("maps", maps);
        model.addAttribute("maplengh", maps.size());
        System.out.println(maps.size());
    	return "Home";
    }

    
    
    @GetMapping(value = "/Map")
    public String Map(Model model) {
        List<Map> maps = mapDao.selectAll();
        model.addAttribute("maps", maps);
        
        return "Map";
    }
    
    @PostMapping(value = "/Map")
    public String Map2(@RequestParam("region") String region, Model model) {
        List<Map> maps = mapDao.SelectRegion(region);
        System.out.println(region);
        model.addAttribute("maps", maps);
        return "Map";
    }
	
    
    @PostMapping(value = "/register")
    public String register2(@ModelAttribute MemberDTO memberDTO) {
      memberService.save(memberDTO);
    	return "Login";
    }
    
    @GetMapping(value = "/register")
    public String register(Model model) {
    	return "register";
    }
    
    

}
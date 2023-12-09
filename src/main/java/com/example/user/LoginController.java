package com.example.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;

@Controller
public class LoginController {

    @Autowired
    UserServiceImpl service;

    @RequestMapping(value="/login", method= RequestMethod.GET)
    public String login() {
        return "/board/login";
    }
    @RequestMapping(value="/loginok",method=RequestMethod.POST)
    public String loginCheck(HttpSession session, UserVO vo){
        System.out.println("!!");
        String returnURL = "";
        if(session.getAttribute("login") != null) {
            session.removeAttribute("login");
        }

        UserVO loginvo = service.getUser(vo);
        if(loginvo != null) {
            System.out.println("로그인 성공");
            session.setAttribute("login", loginvo);
            returnURL = "redirect:/board/list";
        } else {
            System.out.println("로그인 실패!");
            returnURL = "redirect:/board/login";
        }
        return returnURL;
    }
    // 로그아웃 하는 부분
    @RequestMapping(value="/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/login/login";
    }
}

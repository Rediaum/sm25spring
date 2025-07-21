package edu.sm.controller;

import edu.sm.dto.Cust;
import edu.sm.service.CustService;
import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.nio.file.Files;

@Controller
@Slf4j
@RequiredArgsConstructor
public class LoginController {

    final CustService custService;

    @RequestMapping("/login")
    public String login(Model model) {
        model.addAttribute("center","login");
        return "index";
    }

    @RequestMapping("/logout")
    public String logout(HttpSession session) {
        if(session != null){
            session.invalidate();
        }
        return "index";
    }

    @RequestMapping("/loginimpl")
    public String loginimpl(Model model,
                            @RequestParam("id") String id,
                            @RequestParam("pwd") String pwd,
                            HttpSession session) throws Exception {
        log.info("ID:{}, PWD:{}", id, pwd);

        Cust dbCust = null;
        dbCust = custService.get(id);
        String next = "index";
        if(dbCust == null){
            model.addAttribute("loginstate","fail");
            model.addAttribute("center","login");
        }else{
            if(dbCust.getCustPwd().equals(pwd)){
                session.setAttribute("logincust",dbCust);
                next = "redirect:/";
            }else{
                model.addAttribute("loginstate","fail");
                model.addAttribute("center","login");
            }
        }
        return next;
    }

    @RequestMapping("/register")
    public String register(Model model) {
        model.addAttribute("center","register");
        return "index";
    }

    @RequestMapping("/mainregisterimpl")
    public String mainregisterimpl(Model model, Cust cust, HttpSession session) throws Exception {
        // id, pwd, name 입력 받는다
        log.info("{}, {}, {}", cust.getCustId(), cust.getCustPwd(), cust.getCustName());

        // Database에 입력한다
        try{
            custService.register(cust);
            session.setAttribute("logincust", cust);
        }catch(Exception e){
            return "redirect:/register";
        }

        // 메인 페이지로 이동한다
        return "redirect:/";
    }

    @RequestMapping("/registerimpl")
    public String registerimpl(Model model,
                               @RequestParam("id") String id,
                               @RequestParam("pwd") String pwd,
                               @RequestParam("name") String name,
                               @RequestParam("email") String email) {
        log.info("ID:{}, PWD:{}, name:{}, email:{}", id, pwd, name, email);
        model.addAttribute("center","register");
        return "index";
    }
}

package eud.sm.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@Slf4j
public class LoginController {
    @RequestMapping("/login")
    public String login(Model model) {
        model.addAttribute("center","login");
        return "index";
    }

    @RequestMapping("/loginimpl")
    public String loginimpl(Model model,
                            @RequestParam("id") String id,
                            @RequestParam("pwd") String pwd) {
        log.info("ID:{}, PWD:{}", id, pwd);
        model.addAttribute("center","login");
        return "index";
    }

    @RequestMapping("/register")
    public String register(Model model) {
        model.addAttribute("center","register");
        return "index";
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

package edu.sm.controller;

import org.springframework.ui.Model;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@Slf4j
public class MainController {

    // ex) https://127.0.0.1[/] <- 이게 보내지면서 실행됨.
    @RequestMapping("/")
    public String main(Model model) {
        log.info("Start Main...");
        model.addAttribute("message", "Hello world");
        model.addAttribute("number", 11000);
        return "index";
    }

    @RequestMapping("/next")
    public String next(Model model) {
        log.info("Start next...");
        return "next";
    }

    @RequestMapping("/third")
    public String third(Model model) {
        log.info("Start third...");
        return "third";
    }
}

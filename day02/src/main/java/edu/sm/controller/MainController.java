package edu.sm.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@Slf4j
public class MainController {

    // ex) https://127.0.0.1[/] <- 이게 보내지면서 실행됨.
    @RequestMapping("/")
    public String main(Model model) {
        log.info("Start Main...");
        return "index";
    }

    @RequestMapping("/wf")
    public String wf(Model model) {
        model.addAttribute("center", "wf");
        return "index";
    }

    @RequestMapping("/wt")
    public String wt(Model model) {
        model.addAttribute("center", "wt");
        return "index";
    }

    @RequestMapping("/about")
    public String about(Model model) {
        model.addAttribute("left", "aboutleft");
        model.addAttribute("center","about");
        return "index";
    }
}
package eud.sm.controller;

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
        log.info("Start Main...");
        return "index";
    }
}

package eud.sm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/js")
public class JavascriptController {

    String dir = "js/";

    @RequestMapping("")
    public String JS(Model model) {
        model.addAttribute("left", dir+"left");
        model.addAttribute("center",dir+"center");
        return "index";
    }

    @RequestMapping("/js1")
    public String js1(Model model) {
        model.addAttribute("left", dir+"left");
        model.addAttribute("center",dir+"js1");
        return "index";
    }

    @RequestMapping("/js2")
    public String js2(Model model) {
        model.addAttribute("left", dir+"left");
        model.addAttribute("center",dir+"js2");
        return "index";
    }

    @RequestMapping("/js3")
    public String js3(Model model) {
        model.addAttribute("left", dir+"left");
        model.addAttribute("center",dir+"js3");
        return "index";
    }
}

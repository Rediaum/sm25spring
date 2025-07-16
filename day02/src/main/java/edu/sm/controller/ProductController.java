package edu.sm.controller;

import org.springframework.ui.Model;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@Slf4j
@RequestMapping("/product")
public class ProductController {
    String dir = "product/";

    @RequestMapping("")
    public String product(Model model){
        model.addAttribute("left",dir+"left");
        model.addAttribute("center",dir+"center");
        return "index";
    }

    @RequestMapping("/search")
    public String Search(Model model){
        model.addAttribute("left",dir+"left");
        model.addAttribute("center",dir+"search");
        return "index";
    }

    @RequestMapping("/add")
    public String Add(Model model){
        model.addAttribute("left",dir+"left");
        model.addAttribute("center",dir+"add");
        return "index";
    }
}

package edu.sm.controller;

import edu.sm.dto.Cust;
import edu.sm.service.CustService;
import lombok.RequiredArgsConstructor;
import org.springframework.ui.Model;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@Slf4j
@RequestMapping("/cust")
@RequiredArgsConstructor
public class CustController {

    final CustService custService;

    String dir = "cust/";
    @RequestMapping("")
    public String cust(Model model){
        model.addAttribute("left",dir+"left");
        model.addAttribute("center",dir+"center");
        return "index";
    }

    @RequestMapping("/delete")
    public String delete(Model model, @RequestParam("id") String id) throws Exception{
        custService.remove(id);
        return "redirect:/cust/get";
    }

    @RequestMapping("/updateimpl")
    public String update(Model model, Cust cust) throws Exception{
        custService.modify(cust);
        return "redirect:/cust/detail?id="+cust.getCustId();
    }

    @RequestMapping("/detail")
    public String detail(Model model, @RequestParam("id") String id) throws Exception {
        Cust cust = null;
        cust = custService.get(id);
        model.addAttribute("cust",cust);
        model.addAttribute("left",dir+"left");
        model.addAttribute("center",dir+"detail");
        return "index";
    }

    @RequestMapping("/get")
    public String Get(Model model) throws Exception{
        List<Cust> list = null;
        list = custService.get();

        model.addAttribute("clist", list);
        model.addAttribute("left",dir+"left");
        model.addAttribute("center",dir+"get");
        return "index";
    }

    @RequestMapping("/add")
    public String Add(Model model){
        model.addAttribute("left",dir+"left");
        model.addAttribute("center",dir+"add");
        return "index";
    }
}

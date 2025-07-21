package edu.sm.controller;

import edu.sm.dto.Cust;
import edu.sm.dto.Product;
import edu.sm.service.ProductService;
import lombok.RequiredArgsConstructor;
import org.springframework.ui.Model;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@Slf4j
@RequestMapping("/product")
@RequiredArgsConstructor
public class ProductController {

    final ProductService productService;

    String dir = "product/";
    @RequestMapping("")
    public String product(Model model){
        model.addAttribute("left",dir+"left");
        model.addAttribute("center",dir+"center");
        return "index";
    }

    @RequestMapping("/get")
    public String Get(Model model) throws Exception{
        List<Product> list = null;
        list = productService.get();
        model.addAttribute("plist",list);
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

    @RequestMapping("/detail")
    public String Detail(Model model, @RequestParam("id") int id) throws Exception{
        Product product = null;
        product = productService.get(id);
        model.addAttribute("p", product);
        model.addAttribute("left",dir+"left");
        model.addAttribute("center",dir+"detail");
        return "index";
    }

    @RequestMapping("/delete")
    public String delete(Model model,@RequestParam("id") int id) throws Exception{
        productService.remove(id);
        return "/product/get";
    }

    @RequestMapping("/registerimpl")
    public String Registerimpl(Model model, Product product) throws Exception{
        productService.register(product);
        return "redirect:/product/get";
    }

    @RequestMapping("/updateimpl")
    public String update(Model model, Product product) throws Exception{
        productService.modify(product);
        return "redirect:/product/detail?id="+product.getProductId();
    }
}

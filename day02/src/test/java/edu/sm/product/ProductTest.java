package edu.sm.product;

import edu.sm.dto.Product;
import edu.sm.service.ProductService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

@SpringBootTest
@Slf4j
class ProductTest {

    @Autowired
    ProductService productService;

    @Test
    void getall() {
        List<Product> list = null;
        try{
            list = productService.get();
            list.forEach(product -> log.info(product.toString()));
            log.info("Select All End ----------------------");
        } catch (Exception e){
            log.info("Select All Test Error...");
            e.printStackTrace();
        }
    }

    @Test
    void insert(){
        Product product = Product.builder().productName("시계").productPrice(50000).discountRate(0.1).productImg("c1.jpg").cateId(30).build();
        try{
            productService.register(product);
            log.info("Insert End --------------------------");
        } catch (Exception e){
            log.info("Insert Test Error...");
            e.printStackTrace();
        }
    }

//    @Test
//    void get(){
//        Product product = null;
//        try{
//            product = productService.get(1124);
//            log.info(product.toString());
//            log.info("Select End --------------------------");
//
//        } catch (Exception e){
//            log.info("Select Test Error...");
//            e.printStackTrace();
//        }
//    }
//
//    @Test
//    void update(){
//        Product product = Product.builder().productId(1124).productName("시계2").productPrice(100000).discountRate(0.2).productImg("c2.jpg").cateId(30).build();
//        try{
//            productService.modify(product);
//            log.info("Update End --------------------------");
//        } catch (Exception e){
//            log.info("Update Test Error...");
//            e.printStackTrace();
//        }
//    }
//
//    @Test
//    void get2(){
//        Product product = null;
//        try{
//            product = productService.get(1124);
//            log.info(product.toString());
//            log.info("Select End --------------------------");
//
//        } catch (Exception e){
//            log.info("Select2 Test Error...");
//            e.printStackTrace();
//        }
//    }
//
//    @Test
//    void delete(){
//        try{
//            productService.remove(1124);
//            log.info("Delete End --------------------------");
//
//        } catch (Exception e){
//            log.info("Delete Test Error...");
//            e.printStackTrace();
//        }
//    }

}

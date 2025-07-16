package edu.sm.cust;

import edu.sm.dto.Cust;
import edu.sm.repository.CustService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

@SpringBootTest
@Slf4j
class CustTest {
    @Autowired
    CustService custService;

    @Test
    void contextLoads(){
        List<Cust> list = null;
        try{
            list = custService.get();
            list.forEach(cust -> log.info(cust.toString()));
        } catch (Exception e){
            log.info("Test Error...");
            e.printStackTrace();
        }
    }

}

package pers.yinjp.airportpost.order.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CreateOrderController {

    private static final Logger logger = Logger.getLogger(String.valueOf("CreateOrderController.class"));

    @RequestMapping("newOrder")
    public String createNewOrder(){
        return "create_order";
    }

}

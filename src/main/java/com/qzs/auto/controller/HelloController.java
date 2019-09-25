package com.qzs.auto.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {



    @RequestMapping("/hello")
    public String hello(String name) {
//        cityMapper.findByState("CA")
//        HttpMessageConverter d;
        System.out.println("hello " + name);

        return "hello " + name;
    }



    @RequestMapping("/test")
    public String test() {
        System.out.println();

        return "test success!!!";
    }
//
}

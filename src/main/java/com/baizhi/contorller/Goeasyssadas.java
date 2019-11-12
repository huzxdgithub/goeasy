package com.baizhi.contorller;

import io.goeasy.GoEasy;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/Goeasy")
public class Goeasyssadas {
    @RequestMapping("/g")
    public void test(String content){

        GoEasy goEasy = new GoEasy("http://rest-hangzhou.goeasy.io", "BC-da7541c1cbed4a49b76815b25b1ff620");

        goEasy.publish("ma_channel","asdsadsa");
        // new Goeas
    }
}

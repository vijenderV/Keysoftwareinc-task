package com.restaurentmanagement.controller;

import com.restaurentmanagement.model.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.security.Principal;

@Controller
@RequestMapping("/home")
public class HomeController {

    @GetMapping("/homePage")
    public String home(){
        return "homePage";
    }

    @GetMapping("/loginAndSignUp")
    public  String loginAndLogout(Model model){
        return "LoginAndSignUp";
    }


    @GetMapping("/doubts")
    public String doubts(Model model){
        return "doubts";
    }

    @GetMapping("/login")
    public String customLogin(){
        return "CustomLoginPage";
    }

    @GetMapping("/HotelAndItems")
    public String hotelAndItems(){
       return "HotelAndItems";
    }

    @GetMapping("/loginError")
    public String lognError(){

        return "loginError";

    }

    @GetMapping("/orderForWhoom")
    public String orderForWhoom(){
        return "orderForWhoom";
    }

    @PostMapping("/handleDateSubmission")
    public String handleDateSubmission(@RequestParam("selectedDate") String selectedDate, HttpSession httpSession) {
        // Handle the selected date in your controller method
        System.out.println("Selected Date: " + selectedDate);

        httpSession.setAttribute("SelectedDate",selectedDate);
        // Add your logic here
        return "redirect:/home/orderForWhoom"; // Redirect to a success page or return a different view
    }

    @GetMapping("/pleasegoForSelectTheDate")
    public String pleaseSelectDate(){
        return "datePage";
    }


}

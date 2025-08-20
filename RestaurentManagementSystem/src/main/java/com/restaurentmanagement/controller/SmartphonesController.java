package com.restaurentmanagement.controller;

import com.restaurentmanagement.model.Smartphones;
import com.restaurentmanagement.service.SmartphonesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/smartPhones")
public class SmartphonesController {

    @Autowired
    SmartphonesService smartphonesService;

    @GetMapping("/smartPhoneRegister")
    public String registerFood(Model model){
        model.addAttribute("smartPhone",new Smartphones());
        return "addSmartPhone";
    }

    @PostMapping("/addSmartPhones")
    public String addHotel(@ModelAttribute Smartphones smartphones){
        smartphonesService.addSmartphone(smartphones);
        return "redirect:/smartPhones/getAllSmartPhones";
    }

    @GetMapping("/getAllSmartPhones")
    public String getAllSmartPhones(Model model){
        List<Smartphones> smartPhones=smartphonesService.getAllSmartPhones();
        model.addAttribute("smartPhoneList",smartPhones);
        return "getAllSmartPhones";
    }

    @GetMapping("/deleteSmartPhoneById/{id}")
    public String deleteSmartPhone(@PathVariable int id){
        smartphonesService.deleteSmartphone(id);
        return "redirect:/smartPhones/getAllSmartPhones";
    }


    @PostMapping("/updateSmartPhone")
    public String updateSmartPhone(@ModelAttribute Smartphones smartphones){
        smartphonesService.updateSmartphone(smartphones);
        return "redirect:/smartPhones/getAllSmartPhones";
    }

    @GetMapping("/updateSmartPhoneById/{id}")
    public String updateSmartPhoneById(@PathVariable int id,Model model){
       Smartphones smartPhone =smartphonesService.getSmartPhoneById(id);
        model.addAttribute("smartPhone",smartPhone);
        return "updateSmartPhone";
    }

    @GetMapping("/showAllSmartPhones")
    public String showAllSmartPhones(Model model){
        List<Smartphones> smartPhones=smartphonesService.getAllSmartPhones();
        model.addAttribute("smartPhoneList",smartPhones);
        return "showAllSmartPhones";
    }
}

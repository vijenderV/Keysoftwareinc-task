package com.restaurentmanagement.controller;

import com.restaurentmanagement.model.Cart;
import com.restaurentmanagement.model.Smartphones;
import com.restaurentmanagement.model.Watch;
import com.restaurentmanagement.service.CartsService;
import com.restaurentmanagement.service.SmartphonesService;
import com.restaurentmanagement.service.WatchService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("carts")
public class CartsController {

    @Autowired
    SmartphonesService smartphonesService;

    @Autowired
    WatchService watchService;

    @Autowired
    CartsService cartsService;

    @GetMapping("addtoCart/smartPhones/{productId}")
    public String addToCartSmartPhone(@PathVariable int productId, Model model){
        Smartphones smartphones = smartphonesService.getSmartPhoneById(productId);
        cartsService.addToCartSmartWatch(smartphones);
        return "redirect:/carts/getAllEntries";

    }

    @GetMapping("addtoCart/watchs/{productId}")
    public String addToCartWatch(@PathVariable int productId, Model model){
        Watch watch = watchService.getWatchById(productId);
        cartsService.addToCartWatch(watch);
        return "redirect:/carts/getAllEntries";
    }

    @GetMapping("/getAllEntries")
    public String getAllEntries(Model model){
        List<Cart> carts = cartsService.getallCarts();
        model.addAttribute("carts", carts);
        return "getAllEntries";
    }

    @GetMapping("continewShopping")
    public String continewShoppingCart(Model model){
        return "redirect:/categories/getCategories";
    }
}

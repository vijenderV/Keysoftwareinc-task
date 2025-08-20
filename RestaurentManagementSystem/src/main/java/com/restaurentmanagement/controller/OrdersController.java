package com.restaurentmanagement.controller;


import com.restaurentmanagement.UserUtil;
import com.restaurentmanagement.model.Cart;
import com.restaurentmanagement.service.CartsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("orders")
public class OrdersController {

    @Autowired
    CartsService cartsService;

    @GetMapping("placeOrder")
    public String placeOrder(Model model) {

        List<Cart> cartList = cartsService.getallCarts();
        double totalPrice = cartList.stream()
                .mapToDouble(cart -> Double.parseDouble(cart.getProductPrice())
                        * Integer.parseInt(cart.getProductQuantity()))
                .sum();
        model.addAttribute("cartList", cartList);
        model.addAttribute("user", UserUtil.getUserId());
        model.addAttribute("totalPrice", totalPrice);

        cartsService.clearCartByUser(UserUtil.getUserId());

        return "orderConfirmationPage";
    }
}

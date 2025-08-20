package com.restaurentmanagement.service;

import com.restaurentmanagement.model.Cart;
import com.restaurentmanagement.model.Smartphones;
import com.restaurentmanagement.model.Watch;

import java.util.List;

public interface CartsService {
    public void addToCartSmartWatch(Smartphones smartphones);
    public void addToCartWatch(Watch watch);
    public List<Cart> getallCarts();

    void clearCartByUser(String userId);
}

package com.restaurentmanagement.dao;

import com.restaurentmanagement.model.Cart;
import com.restaurentmanagement.model.Smartphones;
import com.restaurentmanagement.model.Watch;

import java.util.List;

public interface CartsDao {

    public void addToCartSmartWatch(Smartphones smartphones);

    public void addToCartWatch(Watch watch);

    public List<Cart> getallCarts();
   // public Cart getCartById(int cartId);

    void clearCartByUser(String userId);
}

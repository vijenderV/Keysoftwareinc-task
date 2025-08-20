package com.restaurentmanagement.service;

import com.restaurentmanagement.dao.CartsDao;
import com.restaurentmanagement.model.Cart;
import com.restaurentmanagement.model.Smartphones;
import com.restaurentmanagement.model.Watch;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CartsServiceImpl implements CartsService {

    @Autowired
    CartsDao cartsDao;
    @Override
    public void addToCartSmartWatch(Smartphones smartphones) {
        cartsDao.addToCartSmartWatch(smartphones);
    }

    @Override
    public void addToCartWatch(Watch watch) {
        cartsDao.addToCartWatch(watch);
    }

    @Override
    public List<Cart> getallCarts() {
        return cartsDao.getallCarts();
    }

    @Override
    public void clearCartByUser(String userId) {
            cartsDao.clearCartByUser(userId);
    }
}

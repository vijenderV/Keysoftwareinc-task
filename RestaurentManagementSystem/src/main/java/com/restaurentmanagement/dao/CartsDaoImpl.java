package com.restaurentmanagement.dao;

import com.restaurentmanagement.UserUtil;
import com.restaurentmanagement.model.Cart;
import com.restaurentmanagement.model.Smartphones;
import com.restaurentmanagement.model.Watch;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class CartsDaoImpl implements CartsDao {

    @Autowired
    JdbcTemplate  jdbcTemplate;

    @Override
    public void addToCartSmartWatch(Smartphones smartphones) {
        String sql = "INSERT INTO Cart (userId, productID, productType, productName, productPrice, productQuantity) " +
                "VALUES (?, ?, ?, ?, ?, ?)";

        String productType = "SmartPhones";
        String userName = UserUtil.getUserId();   // logged in user
        String productName = smartphones.getName();
        int productId = smartphones.getId();
        double productPrice = smartphones.getPrice();
        int productQuantity = 1;   // default value

        jdbcTemplate.update(sql, userName, productId, productType, productName, productPrice, productQuantity);
    }

    @Override
    public void addToCartWatch(Watch watch) {
        String sql = "INSERT INTO Cart (userId, productID, productType, productName, productPrice, productQuantity) " +
                "VALUES (?, ?, ?, ?, ?, ?)";

        String productType = "Watch";
        String userName = UserUtil.getUserId();   // logged in user
        String productName = watch.getModel();    // assuming 'model' as product name
        int productId = watch.getId();
        double productPrice = watch.getPrice();
        int productQuantity = 1;   // default value

        jdbcTemplate.update(sql, userName, productId, productType, productName, productPrice, productQuantity);
    }

    /*@Override
    public List<Cart> getallCarts() {
        String userId = UserUtil.getUserId();
        String sql = "select * from Cart";
        return jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(Cart.class));
    }*/
    @Override
    public List<Cart> getallCarts() {
        String userId = UserUtil.getUserId(); // get logged-in user
        String sql = "SELECT * FROM Cart WHERE userId = ?";
        return jdbcTemplate.query(sql, new Object[]{userId}, new BeanPropertyRowMapper<>(Cart.class));
    }

    @Override
    public void clearCartByUser(String userId) {
        String sql = "DELETE FROM Cart WHERE userId = ?";
        jdbcTemplate.update(sql, userId);
    }

}

package com.restaurentmanagement.dao;

import com.restaurentmanagement.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Repository;

@Repository
public class UserDaoImpl implements UserDao{
    @Autowired
    JdbcTemplate jdbcTemplate;


    @Override
    public void addUser(User user) {
        String password=new BCryptPasswordEncoder().encode(user.getUpassword());
        String sql="insert into user values('"+user.getUid()+"','"+user.getUname()+"','"+password+"','"+user.getUrole()+"','"+user.getUmobile()+"')";
        jdbcTemplate.update(sql);

    }

    @Override
    public User getUserByName(String name) {

        String sql="select * from user where uname='"+name+"'";

        return jdbcTemplate.queryForObject(sql,new BeanPropertyRowMapper<>(User.class));

    }

    @Override
    public boolean alreadyExist(int uid) {
        String sql = "SELECT COUNT(*) FROM user WHERE uid = ?";
        int count = jdbcTemplate.queryForObject(sql, Integer.class, uid);
        return count>0;
    }




}

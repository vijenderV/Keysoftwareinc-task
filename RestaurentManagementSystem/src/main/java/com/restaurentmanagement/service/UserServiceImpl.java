package com.restaurentmanagement.service;

import com.restaurentmanagement.dao.UserDao;
import com.restaurentmanagement.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService{

    @Autowired
    UserDao userDao;
    @Override
    public void addUser(User user) {
        userDao.addUser(user);
    }

    @Override
    public User getUserByName(String name) {
        return userDao.getUserByName(name);
    }

    @Override
    public boolean alreadyExist(int uid) {
        return userDao.alreadyExist(uid);
    }
}

package com.restaurentmanagement.service;

import com.restaurentmanagement.model.User;

public interface UserService {

    void addUser(User user);

    User getUserByName(String name);

    boolean alreadyExist(int uid);
}

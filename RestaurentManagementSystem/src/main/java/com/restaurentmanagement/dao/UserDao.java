package com.restaurentmanagement.dao;

import com.restaurentmanagement.model.User;

public interface UserDao {

    /*
    * this method  is used to add the one record of user into the database
    * */
    void addUser(User user);

    /*
    * this method is used to fetch the one User record from the database based on the name
    * */
    User getUserByName(String name);

    /*
    * this method will return true if the record is already exict in the database based on the id otherwise false
    * */
    boolean alreadyExist(int uid);
}

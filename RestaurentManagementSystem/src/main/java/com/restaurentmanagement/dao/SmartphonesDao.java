package com.restaurentmanagement.dao;

import com.restaurentmanagement.model.Smartphones;

import java.util.List;

public interface SmartphonesDao {
    public void addSmartPhone(Smartphones smartphones);

    List<Smartphones> getAllSmartPhones();

    public void deleteSmartphone(int id);
    
    public void updateSmartphone(Smartphones smartphones);

    Smartphones getSmartPhoneById(int id);
}

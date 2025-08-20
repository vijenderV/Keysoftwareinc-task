package com.restaurentmanagement.service;

import com.restaurentmanagement.dao.SmartphonesDao;
import com.restaurentmanagement.model.Smartphones;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SmartphonesServiceImpl implements SmartphonesService {
    @Autowired
    SmartphonesDao smartphonesDao;
    @Override
    public void addSmartphone(Smartphones smartphones) {
        smartphonesDao.addSmartPhone(smartphones);
    }

    @Override
    public List<Smartphones> getAllSmartPhones() {
        return smartphonesDao.getAllSmartPhones();
    }

    @Override
    public void deleteSmartphone(int id) {
        smartphonesDao.deleteSmartphone(id);
    }

    @Override
    public void updateSmartphone(Smartphones smartphones) {
        smartphonesDao.updateSmartphone(smartphones);
    }

    @Override
    public Smartphones getSmartPhoneById(int id) {
        return smartphonesDao.getSmartPhoneById(id);
    }
}

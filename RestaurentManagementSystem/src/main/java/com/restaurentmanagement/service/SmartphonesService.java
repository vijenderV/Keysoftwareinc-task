package com.restaurentmanagement.service;

import com.restaurentmanagement.model.Smartphones;
import org.springframework.web.bind.annotation.ModelAttribute;

import java.util.List;

public interface SmartphonesService {

    public void addSmartphone(@ModelAttribute Smartphones smartphones);

    List<Smartphones> getAllSmartPhones();

    public void deleteSmartphone(int id);

    public void updateSmartphone(Smartphones smartphones);

    Smartphones getSmartPhoneById(int id);
}

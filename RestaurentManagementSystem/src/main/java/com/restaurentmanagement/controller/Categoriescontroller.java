package com.restaurentmanagement.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("categories")
public class Categoriescontroller {

    @GetMapping("getCategories")
    public String getCategoriesPage(){
        return "categories";
    }
}

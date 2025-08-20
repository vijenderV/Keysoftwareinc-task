package com.restaurentmanagement.controller;

import com.restaurentmanagement.model.Watch;
import com.restaurentmanagement.service.WatchService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/watches")
public class WatchesController {

    @Autowired
    WatchService watchesService;

    @GetMapping("/watchRegister")
    public String registerWatch(Model model) {
        model.addAttribute("watch", new Watch());
        return "addWatch";
    }

    @PostMapping("/addWatch")
    public String addWatch(@ModelAttribute Watch watch) {
        watchesService.addWatch(watch);
        return "redirect:/watches/getAllWatches";
    }

    @GetMapping("/getAllWatches")
    public String getAllWatches(Model model) {
        List<Watch> watchList = watchesService.getAllWatches();
        model.addAttribute("watchList", watchList);
        return "getAllWatches";
    }

    @GetMapping("/deleteWatchById/{id}")
    public String deleteWatch(@PathVariable int id) {
        watchesService.deleteWatchById(id);
        return "redirect:/watches/getAllWatches";
    }

    @PostMapping("/updateWatch")
    public String updateWatch(@ModelAttribute Watch watch) {
        watchesService.updateWatch(watch);
        return "redirect:/watches/getAllWatches";
    }

    @GetMapping("/updateWatchById/{id}")
    public String updateWatchById(@PathVariable int id, Model model) {
        Watch watch = watchesService.getWatchById(id);
        model.addAttribute("watch", watch);
        return "updateWatch";
    }

    @GetMapping("/showAllWatches")
    public String showAllWatches(Model model) {
        List<Watch> watchList = watchesService.getAllWatches();
        model.addAttribute("watchList", watchList);
        return "showAllWatches";
    }
}
package com.restaurentmanagement.dao;

import com.restaurentmanagement.model.Watch;

import java.util.List;

public interface WatchesDao {

    public void addWatch(Watch watch);

    List<Watch> getAllWatches();

    public void deleteWatchById(int id);

    public void updateWatch(Watch watch);

    Watch getWatchById(int id);
}

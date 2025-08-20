package com.restaurentmanagement.service;

import com.restaurentmanagement.dao.WatchesDao;
import com.restaurentmanagement.model.Watch;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class WatchServiceImpl implements WatchService {

    @Autowired
    WatchesDao watchesDao;

    @Override
    public void addWatch(Watch watch) {
        watchesDao.addWatch(watch);
    }

    @Override
    public List<Watch> getAllWatches() {
        return watchesDao.getAllWatches();
    }

    @Override
    public void deleteWatchById(int id) {
        watchesDao.deleteWatchById(id);
    }

    @Override
    public void updateWatch(Watch watch) {
        watchesDao.updateWatch(watch);
    }

    @Override
    public Watch getWatchById(int id) {
        return watchesDao.getWatchById(id);
    }

    public WatchesDao getWatchesDao() {
        return watchesDao;
    }

    public void setWatchesDao(WatchesDao watchesDao) {
        this.watchesDao = watchesDao;
    }
}

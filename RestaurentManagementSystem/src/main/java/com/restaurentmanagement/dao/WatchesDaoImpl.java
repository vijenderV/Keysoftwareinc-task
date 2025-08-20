package com.restaurentmanagement.dao;

import com.restaurentmanagement.model.Watch;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class WatchesDaoImpl implements WatchesDao {


    @Autowired
    JdbcTemplate jdbcTemplate;

    @Override
    public void addWatch(Watch watch) {
        String sql = "insert into Watch values('"
                + watch.getId() + "','"
                + watch.getModel() + "','"
                + watch.getColor() + "','"
                + watch.getPrice() + "')";
        jdbcTemplate.update(sql);
    }

    @Override
    public List<Watch> getAllWatches() {
        String sql = "select * from Watch";
        return jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(Watch.class));
    }

    @Override
    public void deleteWatchById(int id) {
        String sql = "delete from Watch where id='" + id + "'";
        jdbcTemplate.update(sql);
    }

    @Override
    public void updateWatch(Watch watch) {
        String sql = "update Watch set " +
                "model='" + watch.getModel() + "', " +
                "color='" + watch.getColor() + "', " +
                "price='" + watch.getPrice() + "' " +
                "where id='" + watch.getId() + "'";
        jdbcTemplate.update(sql);
    }

    @Override
    public Watch getWatchById(int id) {
        String sql = "select * from Watch where id='" + id + "'";
        return jdbcTemplate.queryForObject(sql, new BeanPropertyRowMapper<>(Watch.class));
    }
}

package com.restaurentmanagement.dao;

import com.restaurentmanagement.model.Smartphones;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class SmartphonesDaoImpl implements SmartphonesDao {

    @Autowired
    JdbcTemplate jdbcTemplate;
    @Override
    public void addSmartPhone(Smartphones smartphone) {
        String sql = "insert into Smartphones values('"
                + smartphone.getId() + "','"
                + smartphone.getName() + "','"
                + smartphone.getModel() + "','"
                + smartphone.getRam() + "','"
                + smartphone.getRom() + "','"
                + smartphone.getPrice() + "')";
        jdbcTemplate.update(sql);

    }

    @Override
    public List<Smartphones> getAllSmartPhones() {
        String sql="select * from Smartphones";
        List<Smartphones> list=jdbcTemplate.query(sql,new BeanPropertyRowMapper<Smartphones>(Smartphones.class));
        return list;
    }

    @Override
    public void deleteSmartphone(int id) {
        String sql = "delete from smartphones where id='" + id + "'";
        jdbcTemplate.update(sql);
    }

    @Override
    public void updateSmartphone(Smartphones smartphones) {
        String sql = "update smartphones set " +
                "name='" + smartphones.getName() + "', " +
                "model='" + smartphones.getModel() + "', " +
                "ram='" + smartphones.getRam() + "', " +
                "rom='" + smartphones.getRom() + "', " +
                "price='" + smartphones.getPrice() + "' " +
                "where id='" + smartphones.getId() + "'";
        jdbcTemplate.update(sql);
    }

    @Override
    public Smartphones getSmartPhoneById(int id) {
        String sql="select * from Smartphones where id='"+id+"'";
        Smartphones smartphones=jdbcTemplate.queryForObject(sql,new BeanPropertyRowMapper<>(Smartphones.class));
        return smartphones;
    }

}

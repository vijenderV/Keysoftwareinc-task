package com.restaurentmanagement.model;

public class UserTracking {
    String username;
    String ItemIds;
    int hotelId;
    String date01;

    public String getUsername() {

        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getItemIds() {
        return ItemIds;
    }

    public void setItemIds(String itemIds) {
        ItemIds = itemIds;
    }

    public int getHotelId() {
        return hotelId;
    }

    public void setHotelId(int hotelId) {
        this.hotelId = hotelId;
    }

    public String getDate01() {
        return date01;
    }

    public void setDate01(String date01) {
        this.date01 = date01;
    }
}

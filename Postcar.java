/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DTO;

import java.sql.Timestamp;

/**
 *
 * @author RISHIKA DHANOTIYA
 */
public class Postcar {
   private int car_id;
    private int user_id;
    private int car_model;
    private int car_variant;
    private int car_brand;
    private int price;
    private int modelyear;
    private int owners;
    private int kmsdriven;
    private String color;
    private String description;
    private String city;
    private String fuel_type;
    private boolean insurance;
    private Timestamp times;
    public Postcar() {
    }

    public Postcar(int user_id, int car_model, int car_variant, int car_brand, int price, int modelyear, int owners, int kmsdriven, String color, String description, String city, String fuel_type, boolean insurance) {
        this.user_id = user_id;
        this.car_model = car_model;
        this.car_variant = car_variant;
        this.car_brand = car_brand;
        this.price = price;
        this.modelyear = modelyear;
        this.owners = owners;
        this.kmsdriven = kmsdriven;
        this.color = color;
        this.description = description;
        this.city = city;
        this.fuel_type = fuel_type;
        this.insurance = insurance;
     //   this.times = times;
    }

    public int getCar_id() {
        return car_id;
    }

    public void setCar_id(int car_id) {
        this.car_id = car_id;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public int getCar_model() {
        return car_model;
    }

    public void setCar_model(int car_model) {
        this.car_model = car_model;
    }

    public int getCar_variant() {
        return car_variant;
    }

    public void setCar_variant(int car_variant) {
        this.car_variant = car_variant;
    }

    public int getCar_brand() {
        return car_brand;
    }

    public void setCar_brand(int car_brand) {
        this.car_brand = car_brand;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getModelyear() {
        return modelyear;
    }

    public void setModelyear(int modelyear) {
        this.modelyear = modelyear;
    }

    public int getOwners() {
        return owners;
    }

    public void setOwners(int owners) {
        this.owners = owners;
    }

    public int getKmsdriven() {
        return kmsdriven;
    }

    public void setKmsdriven(int kmsdriven) {
        this.kmsdriven = kmsdriven;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getFuel_type() {
        return fuel_type;
    }

    public void setFuel_type(String fuel_type) {
        this.fuel_type = fuel_type;
    }

    public boolean isInsurance() {
        return insurance;
    }

    public void setInsurance(boolean insurance) {
        this.insurance = insurance;
    }

        
}

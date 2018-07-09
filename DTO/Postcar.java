/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DTO;

/**
 *
 * @author RISHIKA DHANOTIYA
 */
public class Postcar {
  private int car_id;
    private int user_id;
    private int model_id;
    private int variant_id;
    private int brand_id;
    private int image_id;
    private int price;
    private int modelyear;
    private int owners;
    private int kmsdriven;
    private char color;
    private char description;
    private char city;
    private char fuel_type;
    private boolean insurance;

    public Postcar() {
    }

    public Postcar(int car_id, int user_id, int model_id, int variant_id, int brand_id, int image_id, int price, int modelyear, int owners, int kmsdriven, char color, char description, char city, char fuel_type, boolean insurance) {
        this.car_id = car_id;
        this.user_id = user_id;
        this.model_id = model_id;
        this.variant_id = variant_id;
        this.brand_id = brand_id;
        this.image_id = image_id;
        this.price = price;
        this.modelyear = modelyear;
        this.owners = owners;
        this.kmsdriven = kmsdriven;
        this.color = color;
        this.description = description;
        this.city = city;
        this.fuel_type = fuel_type;
        this.insurance = insurance;
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

    public int getModel_id() {
        return model_id;
    }

    public void setModel_id(int model_id) {
        this.model_id = model_id;
    }

    public int getVariant_id() {
        return variant_id;
    }

    public void setVariant_id(int variant_id) {
        this.variant_id = variant_id;
    }

    public int getBrand_id() {
        return brand_id;
    }

    public void setBrand_id(int brand_id) {
        this.brand_id = brand_id;
    }

    public int getImage_id() {
        return image_id;
    }

    public void setImage_id(int image_id) {
        this.image_id = image_id;
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

    public char getColor() {
        return color;
    }

    public void setColor(char color) {
        this.color = color;
    }

    public char getDescription() {
        return description;
    }

    public void setDescription(char description) {
        this.description = description;
    }

    public char getCity() {
        return city;
    }

    public void setCity(char city) {
        this.city = city;
    }

    public char getFuel_type() {
        return fuel_type;
    }

    public void setFuel_type(char fuel_type) {
        this.fuel_type = fuel_type;
    }

    public boolean isInsurance() {
        return insurance;
    }

    public void setInsurance(boolean insurance) {
        this.insurance = insurance;
    }
    
    
  
}

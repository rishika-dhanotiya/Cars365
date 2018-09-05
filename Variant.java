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
public class Variant {
    private int variant_id;
    private int brand_id;
    private int model_id;
    private int variant_price;
   private String variant_name;

    public Variant() {
    }

    public Variant(int variant_id, int brand_id, int model_id, int variant_price, String variant_name) {
        this.variant_id = variant_id;
        this.brand_id = brand_id;
        this.model_id = model_id;
        this.variant_price = variant_price;
        this.variant_name = variant_name;
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

    public int getModel_id() {
        return model_id;
    }

    public void setModel_id(int model_id) {
        this.model_id = model_id;
    }

    public int getVariant_price() {
        return variant_price;
    }

    public void setVariant_price(int variant_price) {
        this.variant_price = variant_price;
    }

    public String getVariant_name() {
        return variant_name;
    }

    public void setVariant_name(String variant_name) {
        this.variant_name = variant_name;
    }

    
    
}

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
public class Brand {
  private int brand_id;
private char brand_name;

    public Brand() {
    }

    public Brand(int brand_id, char brand_name) {
        this.brand_id = brand_id;
        this.brand_name = brand_name;
    }

    public int getBrand_id() {
        return brand_id;
    }

    public void setBrand_id(int brand_id) {
        this.brand_id = brand_id;
    }

    public char getBrand_name() {
        return brand_name;
    }

    public void setBrand_name(char brand_name) {
        this.brand_name = brand_name;
    }

}

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
public class Model {
   private int model_id;
   private int brand_id;
   private char model_type;
   private char model_name;

    public Model() {
    }

    public Model(int model_id, int brand_id, char model_type, char model_name) {
        this.model_id = model_id;
        this.brand_id = brand_id;
        this.model_type = model_type;
        this.model_name = model_name;
    }

    public int getModel_id() {
        return model_id;
    }

    public void setModel_id(int model_id) {
        this.model_id = model_id;
    }

    public int getBrand_id() {
        return brand_id;
    }

    public void setBrand_id(int brand_id) {
        this.brand_id = brand_id;
    }

    public char getModel_type() {
        return model_type;
    }

    public void setModel_type(char model_type) {
        this.model_type = model_type;
    }

    public char getModel_name() {
        return model_name;
    }

    public void setModel_name(char model_name) {
        this.model_name = model_name;
    }
   
   
}

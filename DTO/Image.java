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
public class Image {
    private int image_id;
    private int car_id;
    private char source;

    public Image() {
    }

    public Image(int image_id, int car_id, char source) {
        this.image_id = image_id;
        this.car_id = car_id;
        this.source = source;
    }

    public int getImage_id() {
        return image_id;
    }

    public void setImage_id(int image_id) {
        this.image_id = image_id;
    }

    public int getCar_id() {
        return car_id;
    }

    public void setCar_id(int car_id) {
        this.car_id = car_id;
    }

    public char getSource() {
        return source;
    }

    public void setSource(char source) {
        this.source = source;
    }
    
    
}

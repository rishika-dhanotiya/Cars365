/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DTO;

import java.util.Date;

/**
 *
 * @author RISHIKA DHANOTIYA
 */
public class Adsvisitor {
    private int visitor_id;
    private int user_id;
    private int car_id;
    private Date show_date;

    public Adsvisitor() {
    }

    public Adsvisitor(int visitor_id, int user_id, int car_id, Date show_date) {
        this.visitor_id = visitor_id;
        this.user_id = user_id;
        this.car_id = car_id;
        this.show_date = show_date;
    }

    public int getVisitor_id() {
        return visitor_id;
    }

    public void setVisitor_id(int visitor_id) {
        this.visitor_id = visitor_id;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public int getCar_id() {
        return car_id;
    }

    public void setCar_id(int car_id) {
        this.car_id = car_id;
    }

    public Date getShow_date() {
        return show_date;
    }

    public void setShow_date(Date show_date) {
        this.show_date = show_date;
    }
    
    
}

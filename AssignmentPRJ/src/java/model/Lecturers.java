/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.Date;

/**
 *
 * @author GG
 */
public class Lecturers {
    private int instructor_id;
    private String Lname;
    private String Lcode;
    private String email;
    private String address;
    private Date dob;
    private boolean gender;
    private Account account;

    public Lecturers() {
    }

    public Lecturers(int instructor_id, String Lname, String Lcode, String email, String address, Date dob, boolean gender, Account account) {
        this.instructor_id = instructor_id;
        this.Lname = Lname;
        this.Lcode = Lcode;
        this.email = email;
        this.address = address;
        this.dob = dob;
        this.gender = gender;
        this.account = account;
    }

    public int getInstructor_id() {
        return instructor_id;
    }

    public void setInstructor_id(int instructor_id) {
        this.instructor_id = instructor_id;
    }

    public String getLname() {
        return Lname;
    }

    public void setLname(String Lname) {
        this.Lname = Lname;
    }

    public String getLcode() {
        return Lcode;
    }

    public void setLcode(String Lcode) {
        this.Lcode = Lcode;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Date getDob() {
        return dob;
    }

    public void setDob(Date dob) {
        this.dob = dob;
    }

    public boolean isGender() {
        return gender;
    }

    public void setGender(boolean gender) {
        this.gender = gender;
    }

    public Account getAccount() {
        return account;
    }

    public void setAccount(Account account) {
        this.account = account;
    }
    
    
}

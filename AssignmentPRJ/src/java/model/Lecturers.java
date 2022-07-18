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
    private int id_acc;
    private String LecturersCode;
    private String LecName;
    private String email;
    private String Address;
    private Boolean gender;
    private Date Dob;

    public Lecturers() {
    }

    public Lecturers(int id_acc, String LecturersCode, String LecName, String email, String Address, Boolean gender, Date Dob) {
        this.id_acc = id_acc;
        this.LecturersCode = LecturersCode;
        this.LecName = LecName;
        this.email = email;
        this.Address = Address;
        this.gender = gender;
        this.Dob = Dob;
    }

    public int getId_acc() {
        return id_acc;
    }

    public void setId_acc(int id_acc) {
        this.id_acc = id_acc;
    }

    public String getLecturersCode() {
        return LecturersCode;
    }

    public void setLecturersCode(String LecturersCode) {
        this.LecturersCode = LecturersCode;
    }

    public String getLecName() {
        return LecName;
    }

    public void setLecName(String LecName) {
        this.LecName = LecName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return Address;
    }

    public void setAddress(String Address) {
        this.Address = Address;
    }

    public Boolean getGender() {
        return gender;
    }

    public void setGender(Boolean gender) {
        this.gender = gender;
    }

    public Date getDob() {
        return Dob;
    }

    public void setDob(Date Dob) {
        this.Dob = Dob;
    }

    @Override
    public String toString() {
        return "Lecturers{" + "id_acc=" + id_acc + ", LecturersCode=" + LecturersCode + ", LecName=" + LecName + ", email=" + email + ", Address=" + Address + ", gender=" + gender + ", Dob=" + Dob + '}';
    }
    
    
    
}

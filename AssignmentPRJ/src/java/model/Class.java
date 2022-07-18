/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author GG
 */
public class Class {
    private int Group_id;
    private String StudentCode;

    public Class() {
    }

    public Class(int Group_id, String StudentCode) {
        this.Group_id = Group_id;
        this.StudentCode = StudentCode;
    }

    public int getGroup_id() {
        return Group_id;
    }

    public void setGroup_id(int Group_id) {
        this.Group_id = Group_id;
    }

    public String getStudentCode() {
        return StudentCode;
    }

    public void setStudentCode(String StudentCode) {
        this.StudentCode = StudentCode;
    }

    @Override
    public String toString() {
        return "Class{" + "Group_id=" + Group_id + ", StudentCode=" + StudentCode + '}';
    }
    
    
}

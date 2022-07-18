/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.ArrayList;

/**
 *
 * @author GG
 */
public class Group {
    private int Group_id;
    private String Group_Name;
    private String course_id;
    private String LecturersCode ;

    public Group() {
    }

    public Group(int Group_id, String Group_Name, String course_id, String LecturersCode) {
        this.Group_id = Group_id;
        this.Group_Name = Group_Name;
        this.course_id = course_id;
        this.LecturersCode = LecturersCode;
    }

    
    public int getGroup_id() {
        return Group_id;
    }

    public void setGroup_id(int Group_id) {
        this.Group_id = Group_id;
    }

    public String getGroup_Name() {
        return Group_Name;
    }

    public void setGroup_Name(String Group_Name) {
        this.Group_Name = Group_Name;
    }

    public String getCourse_id() {
        return course_id;
    }

    public void setCourse_id(String course_id) {
        this.course_id = course_id;
    }

    public String getLecturersCode() {
        return LecturersCode;
    }

    public void setLecturersCode(String LecturersCode) {
        this.LecturersCode = LecturersCode;
    }

    @Override
    public String toString() {
        return Group_Name ;
    }

   
   

}

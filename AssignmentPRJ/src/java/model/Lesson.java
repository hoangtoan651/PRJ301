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
public class Lesson {
    private int lesson_id;
    private String Course_id;
    private int group_id;
    private String Lesson_Name;
    private Date date;
    private int slot;
    private String lecturerCode;
    private int room;

    public Lesson() {
    }

    public Lesson(int lesson_id, String Course_id, int group_id, String Lesson_Name, Date date, int slot, String lecturerCode, int room) {
        this.lesson_id = lesson_id;
        this.Course_id = Course_id;
        this.group_id = group_id;
        this.Lesson_Name = Lesson_Name;
        this.date = date;
        this.slot = slot;
        this.lecturerCode = lecturerCode;
        this.room = room;
    }

    
    public int getLesson_id() {
        return lesson_id;
    }

    public void setLesson_id(int lesson_id) {
        this.lesson_id = lesson_id;
    }

    public String getCourse_id() {
        return Course_id;
    }

    public void setCourse_id(String Course_id) {
        this.Course_id = Course_id;
    }

    public int getGroup_id() {
        return group_id;
    }

    public void setGroup_id(int group_id) {
        this.group_id = group_id;
    }

    public String getLesson_Name() {
        return Lesson_Name;
    }

    public void setLesson_Name(String Lesson_Name) {
        this.Lesson_Name = Lesson_Name;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public int getSlot() {
        return slot;
    }

    public void setSlot(int slot) {
        this.slot = slot;
    }

    public String getLecturerCode() {
        return lecturerCode;
    }

    public void setLecturerCode(String lecturerCode) {
        this.lecturerCode = lecturerCode;
    }

    public int getRoom() {
        return room;
    }

    public void setRoom(int room) {
        this.room = room;
    }

    @Override
    public String toString() {
        return "Lesson{" + "lesson_id=" + lesson_id + ", Course_id=" + Course_id + ", group_id=" + group_id + ", Lesson_Name=" + Lesson_Name + ", date=" + date + ", slot=" + slot + ", lecturerCode=" + lecturerCode + ", room=" + room + '}';
    }

   
    
    
}

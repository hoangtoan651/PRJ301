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
    private Course Course_id;
    private Group group;
    private String Lesson_Name;
    private Date date;
    private Slot slot;
    private Lecturers lecturers;
    private Room room;

    public int getLesson_id() {
        return lesson_id;
    }

    public void setLesson_id(int lesson_id) {
        this.lesson_id = lesson_id;
    }

    public Course getCourse_id() {
        return Course_id;
    }

    public void setCourse_id(Course Course_id) {
        this.Course_id = Course_id;
    }

    public Group getGroup() {
        return group;
    }

    public void setGroup(Group group) {
        this.group = group;
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

    public Slot getSlot() {
        return slot;
    }

    public void setSlot(Slot slot) {
        this.slot = slot;
    }

    public Lecturers getLecturers() {
        return lecturers;
    }

    public void setLecturers(Lecturers lecturers) {
        this.lecturers = lecturers;
    }

    public Room getRoom() {
        return room;
    }

    public void setRoom(Room room) {
        this.room = room;
    }
    
    
    
}

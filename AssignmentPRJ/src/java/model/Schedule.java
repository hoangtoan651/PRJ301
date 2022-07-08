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
public class Schedule {
    private Lesson lession_id;
    private Student StudentCode;
    private Lecturers taker;
    private Group group_id;;
    private int status;
    private Date Time_Record;

    public Lesson getLession_id() {
        return lession_id;
    }

    public void setLession_id(Lesson lession_id) {
        this.lession_id = lession_id;
    }

    public Student getStudentCode() {
        return StudentCode;
    }

    public void setStudentCode(Student StudentCode) {
        this.StudentCode = StudentCode;
    }

    public Lecturers getTaker() {
        return taker;
    }

    public void setTaker(Lecturers taker) {
        this.taker = taker;
    }

    public Group getGroup_id() {
        return group_id;
    }

    public void setGroup_id(Group group_id) {
        this.group_id = group_id;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public Date getTime_Record() {
        return Time_Record;
    }

    public void setTime_Record(Date Time_Record) {
        this.Time_Record = Time_Record;
    }
    
    
    
}

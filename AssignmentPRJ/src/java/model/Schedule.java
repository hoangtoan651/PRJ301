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
    private int lession_id;
    private String StudentCode;
    private String taker;
    private int group_id;;
    private int status;
    private Date Time_Record;

    public Schedule() {
    }

    public Schedule(int lession_id, String StudentCode, String taker, int group_id, int status, Date Time_Record) {
        this.lession_id = lession_id;
        this.StudentCode = StudentCode;
        this.taker = taker;
        this.group_id = group_id;
        this.status = status;
        this.Time_Record = Time_Record;
    }

    
    public int getLession_id() {
        return lession_id;
    }

    public void setLession_id(int lession_id) {
        this.lession_id = lession_id;
    }

    public String getStudentCode() {
        return StudentCode;
    }

    public void setStudentCode(String StudentCode) {
        this.StudentCode = StudentCode;
    }

    public String getTaker() {
        return taker;
    }

    public void setTaker(String taker) {
        this.taker = taker;
    }

    public int getGroup_id() {
        return group_id;
    }

    public void setGroup_id(int group_id) {
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

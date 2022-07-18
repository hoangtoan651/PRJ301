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
public class Attend {
    private String Group_Name;
    private String Student_Code;
    private String Name;
    private int status;
    private String LecturersCode;
    private Date Time_Record;

    public Attend() {
    }

    public Attend(String Group_Name, String Student_Code, String Name, int status, String LecturersCode, Date Time_Record) {
        this.Group_Name = Group_Name;
        this.Student_Code = Student_Code;
        this.Name = Name;
        this.status = status;
        this.LecturersCode = LecturersCode;
        this.Time_Record = Time_Record;
    }

    public String getGroup_Name() {
        return Group_Name;
    }

    public void setGroup_Name(String Group_Name) {
        this.Group_Name = Group_Name;
    }

    public String getStudent_Code() {
        return Student_Code;
    }

    public void setStudent_Code(String Student_Code) {
        this.Student_Code = Student_Code;
    }

    public String getName() {
        return Name;
    }

    public void setName(String Name) {
        this.Name = Name;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getLecturersCode() {
        return LecturersCode;
    }

    public void setLecturersCode(String LecturersCode) {
        this.LecturersCode = LecturersCode;
    }

    public Date getTime_Record() {
        return Time_Record;
    }

    public void setTime_Record(Date Time_Record) {
        this.Time_Record = Time_Record;
    }

    @Override
    public String toString() {
        return "Attend{" + "Group_Name=" + Group_Name + ", Student_Code=" + Student_Code + ", Name=" + Name + ", status=" + status + ", LecturersCode=" + LecturersCode + ", Time_Record=" + Time_Record + '}';
    }
    
    
}

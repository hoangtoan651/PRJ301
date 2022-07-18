/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Attend;
import model.Group;
import model.Lecturers;
import model.Schedule;
import model.Student;
import model.Class;
/**
 *
 * @author GG
 */
public class ScheduleDBContext extends DBContext<Schedule>{
    
    public ArrayList<Attend> ShowAttend(String gName, String Lcode) {
        ArrayList<Attend> list = new ArrayList<>();
        String sql = "select distinct f.Group_Name,a.StudentCode,a.status,a.LecturersCode as taker, a.Time_Record  from Schedule as a \n"
                + "		left  join Lecturers as b on a.LecturersCode = b.LecturersCode\n"
                + "		left  join Group_Student as c on a.StudentCode = c.StudentCode\n"
                + "		left  join Student as d on a.StudentCode = a.StudentCode \n"
                + "		left  join Lesson as e on a.Lesson_id = e.Lesson_id\n"
                + "		left  join [Group] as f on a.Group_id = f.Group_id\n"
                + "where f.Group_Name = ? and f.Course_id = ?";
        
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, gName);
            stm.setString(2, Lcode);
            ResultSet rs = stm.executeQuery();
            while(rs.next()){
//                Schedule s = new Schedule();
//                Group g = new Group();
//                Student stu = new Student();
//                Lecturers l = new Lecturers();
//                Class cl = new Class();
                Attend a = new Attend();
                a.setGroup_Name(rs.getString("Group_Name"));
                a.setStudent_Code(rs.getString("Student_Code"));
                a.setName(rs.getString("Name"));
                a.setStatus(rs.getInt("status"));
                a.setLecturersCode(rs.getString("LecturersCode"));
                a.setTime_Record(rs.getDate("Time_Record"));
                
                list.add(a);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ScheduleDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
    public ArrayList<Attend> takeAttend(String crs){
        ArrayList<Attend> list = new ArrayList<>();
        
        String sql = "select distinct b.Group_Name, e.StudentCode,e.[Name] ,a.[status], c.LecturersCode as Taker, a.Time_Record from Schedule as a \n"
                + "					left join [Group] as b on a.Group_id = b.Group_id\n"
                + "					left join Lecturers as c on a.LecturersCode = c.LecturersCode\n"
                + "					left join Group_Student as d on  a.Group_id = d.Group_id\n"
                + "					left join Student as e on a.StudentCode = e.StudentCode\n"
                + "Where b.Group_Name = ?  ";
        try {   
            PreparedStatement stm = connection.prepareStatement(sql);
//            stm.setString(1, Class);
            stm.setString(1, crs);
            ResultSet rs = stm.executeQuery();
           while(rs.next()){
                Attend a = new Attend();
                a.setGroup_Name(rs.getString(1));
                a.setStudent_Code(rs.getString(2));
                a.setName(rs.getString(3));
                a.setStatus(rs.getInt(4));
                a.setLecturersCode(rs.getString(5));
                a.setTime_Record(rs.getDate(6));
                list.add(a);
           }
        } catch (SQLException ex) {
            Logger.getLogger(ScheduleDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
    public void updateStatus(String sCode, int status, int Lid){
        ArrayList<String> list = new ArrayList<>();
        String sql = "update Schedule \n"
                + "set status = ?\n"
                + "where StudentCode = ? \n"
                + "		and Lesson_id = ?";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, status);
            stm.setString(2, sCode);
            stm.setInt(3, Lid);
            stm.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ScheduleDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    @Override
    public ArrayList<Schedule> list() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Schedule get(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void insert(Schedule model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void update(Schedule model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void delete(Schedule model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
    public static void main(String[] args) {
        ScheduleDBContext ls = new ScheduleDBContext();
        ArrayList<Attend> list = ls.takeAttend("SE1605");
        for (Attend attend : list) {
            System.out.println(attend.toString());
        }
    }
}

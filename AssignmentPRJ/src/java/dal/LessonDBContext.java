/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Locale;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Course;
import model.Lesson;

/**
 *
 * @author GG
 */
public class LessonDBContext extends DBContext<Lesson>{
    public static String GetDay() {
        Calendar calendar = Calendar.getInstance();
        Date date = (Date) calendar.getTime();
        SimpleDateFormat df = new SimpleDateFormat("EEEE", Locale.ENGLISH);
        String dayofweek = df.format(date.getTime());
        return dayofweek;
    }
     
    @Override
    public ArrayList<Lesson> list() {
        ArrayList<Lesson> lessonlist = new ArrayList<>();
        try {
            String sql = "Select *from Lesson";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                int Lesson_id = rs.getInt(1);
                String cid = rs.getString(2);
                int gid = rs.getInt(3);
                String Lname = rs.getString(4);
                Date date = rs.getDate(5);
                int slot = rs.getInt(6);
                String LecCode = rs.getString(7);
                int room = rs.getInt(8);
                Lesson ls = new Lesson(Lesson_id, cid, gid, Lname, date, slot, LecCode, room);
                lessonlist.add(ls);

            }
        } catch (SQLException ex) {
            Logger.getLogger(LessonDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return lessonlist;
            
    }

    @Override
    public Lesson get(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void insert(Lesson model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void update(Lesson model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void delete(Lesson model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
 
    public static void main(String[] args) {
        LessonDBContext ls = new LessonDBContext();
        ArrayList<Lesson> t = ls.list();
        for (Lesson lesson : t) {
            System.out.println(lesson.toString());
        }
        
//        ls.list();
//        System.out.println(ls.list());
    }
}

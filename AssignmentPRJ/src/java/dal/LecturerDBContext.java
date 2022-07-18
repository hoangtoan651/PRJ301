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
import model.Lecturers;

/**
 *
 * @author GG
 */
public class LecturerDBContext extends DBContext<Lecturers>{
    public ArrayList<Lecturers> listLec(String LecID){
        ArrayList<Lecturers> list = new ArrayList<>();
        String sql = "select LecturersCode ,LecName from Lecturers where LecturersCode = ?";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, LecID);
            ResultSet rs = stm.executeQuery();
            while(rs.next()){
                Lecturers l = new Lecturers();
                l.setLecturersCode(rs.getString(1));
                l.setLecName(rs.getString(2));
                list.add(l);
                
            }
        } catch (SQLException ex) {
            Logger.getLogger(LecturerDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
    @Override
    public ArrayList<Lecturers> list() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Lecturers get(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void insert(Lecturers model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void update(Lecturers model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void delete(Lecturers model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
//    public static void main(String[] args) {
//        LecturerDBContext ls = new LecturerDBContext();
//        ArrayList<Lecturers> tag = ls.listLec("sonnt5");
//        for (Lecturers lecturers : tag) {
//            System.out.println(lecturers.toString());
//        }
//    }
}

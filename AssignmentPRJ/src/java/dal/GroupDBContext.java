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
import model.Group;

/**
 *
 * @author GG
 */
public class GroupDBContext extends DBContext<Group>{
    
    public ArrayList<Group> getGroupByID() {
        ArrayList<Group> list = new ArrayList<>();
        try {
            String sql = "Select Group_Name from [Group] ";
            PreparedStatement stm = connection.prepareStatement(sql);
//            stm.setString(1, lec);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Group crs = new Group();
//                crs.setGroup_id(rs.getInt(1));
                crs.setGroup_Name(rs.getString(1));
//                crs.setCourse_id(rs.getString(3));
//                crs.setLecturersCode(rs.getString(4));
                list.add(crs);
                //return list;
            }
        } catch (SQLException ex) {
            Logger.getLogger(GroupDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    @Override
    public ArrayList<Group> list() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Group get(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void insert(Group model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void update(Group model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void delete(Group model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
    
    public static void main(String[] args) {
        GroupDBContext t = new GroupDBContext();
        ArrayList<Group> gr = t.getGroupByID();
        for (Group group : gr) {
            System.out.println(group.toString());
        }
    }
}

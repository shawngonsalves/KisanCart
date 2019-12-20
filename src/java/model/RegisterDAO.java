/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Mrunal
 */
public class RegisterDAO extends BaseDAO {
    public boolean checkLogin(Register l){
    
        try {
            String sql = "SELECT * FROM FARMER WHERE email=? AND password=?";//setp 3 Formulate the Query
            PreparedStatement p=getConnection().prepareStatement(sql);//step 4 prepare Query For Execution
            p.setString(1, l.getEmail());
            p.setString(2,l.getPassword());
             ResultSet rs=p.executeQuery();
             if(rs.next())
                 return true;
             else return false;
             
        } catch (SQLException ex) {
            Logger.getLogger(RegisterDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
return false;
}
    public int insertInfo(Register l){
    
        try {
            String sql = "INSERT  FROM FARMER WHERE email=? AND password=?";//setp 3 Formulate the Query
            PreparedStatement p=getConnection().prepareStatement(sql);//step 4 prepare Query For Execution
            p.setString(1, l.getEmail());
            p.setString(2,l.getPassword());
             ResultSet rs=p.executeQuery();
             if(rs.next())
             return 1;
             else
                 return 0;
             
        } catch (SQLException ex) {
            
                    //log(Level.SEVERE, null, ex);
        }
        
        
return 0;
    
}
}

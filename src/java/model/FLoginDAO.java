/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Mrunal
 */
public class FLoginDAO extends BaseDAO {
    

    
    public boolean checkLogin(Register l){
    
        try {
            String sql = "SELECT * FROM FARMER WHERE FEMAIL=? AND FPASSWORD=?";
            BaseDAO b=new BaseDAO();
            Connection con=b.getConnection();
            PreparedStatement p=con.prepareStatement(sql);
            p.setString(1, l.getEmail());
            p.setString(2, l.getPassword());
           ResultSet rs=p.executeQuery();
             if(rs.next())
                 return true;
             else 
                 return false;
             
        } catch (SQLException ex) {
            Logger.getLogger(FLoginDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
return false;
}
  public List getAddress(String e){
    List<Register> l=new ArrayList<>();
        try {
            String sql = "SELECT FADDRESS FROM FARMER WHERE FEMAIL=? ";
            BaseDAO b=new BaseDAO();
            Connection con=b.getConnection();
            PreparedStatement p=con.prepareStatement(sql);
            p.setString(1,e);
           // Register r=new Register();
            ResultSet rs=p.executeQuery();
          
                 while(rs.next())
                 {
                     Register r= new Register();
                     r.setAddress(rs.getString(1));
                     r.setEmail(e);
                     l.add(r);
                 }
             
             
        } catch (SQLException ex) {
            Logger.getLogger(FLoginDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
       return l;
     
 
}  
  public void addToCart(int qty, String vname){
    
        try {
            String sql1 = "SELECT COST FROM VEGETABLE WHERE VNAME=?";
            BaseDAO b=new BaseDAO();
            Connection con=b.getConnection();
            PreparedStatement p=con.prepareStatement(sql1);
             p.setString(1,vname);
            ResultSet rs=p.executeQuery();
            
            String sql2 = "Insert into CART values(vname,rs.getString(1),qty,rs.getString(1)*qty,'mymail.com' )";
            PreparedStatement p2=con.prepareStatement(sql2);
            int r=p2.executeUpdate();
           
            
        } catch (SQLException ex) {
            Logger.getLogger(FLoginDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        

}
  
           
}
    


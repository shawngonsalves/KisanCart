/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author universe
 */
public class BaseDAO {
    
    Connection con;
    
    public Connection getConnection()
    {
        try {
            Class.forName("org.apache.derby.jdbc.ClientDriver");//setp 1
            try {
                con = DriverManager.getConnection("jdbc:derby://localhost:1527/KC","KC","KC");//step 2
            } catch (SQLException ex) {
                Logger.getLogger(BaseDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(BaseDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return con;
    }
    
}

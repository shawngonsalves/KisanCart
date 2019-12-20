/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

/**
 *
 * @author Mrunal
 */
public class generateOTP {

    public int generateOTP() {
        int otp = (int) (Math.random() * 9000) + 1000;
        return (otp);
    }
}

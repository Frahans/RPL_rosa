/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Tes;

import Controller.ObatDAO;

/**
 *
 * @author Frans
 */
public class tes_delete {
    public static void main(String[] args) {
        String[] a={"OB0101010"};
        ObatDAO o = new ObatDAO();
        o.HapusDataObat(a);
        
    }
    
}

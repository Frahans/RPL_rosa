/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.Janji;
import java.awt.HeadlessException;
import java.sql.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author admin
 */
public class JanjiDAO {

    Connection connection;
    DatabaseConnection database = new DatabaseConnection();

    public ArrayList<Janji> list() throws SQLException {
        connection = null;
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        ArrayList<Janji> janjiList = new ArrayList<Janji>();
        try {
            connection = database.getConnection();
            statement = connection.prepareStatement("SELECT * FROM janji");
            resultSet = statement.executeQuery();
            while (resultSet.next()) {
                Janji janji = new Janji();
                janji.setKode_pasien(resultSet.getString("kode_pasien"));
                janji.setKode_janji(resultSet.getString("kode_janji"));
                janji.setJam(resultSet.getString("jam"));
                janji.setHariTanggal(resultSet.getString("Tanggal"));
                janjiList.add(janji);
            }
        } finally {
            if (resultSet != null) {
                try {
                    resultSet.close();
                } catch (SQLException ignore) {
                }
            }
            if (statement != null) {
                try {
                    statement.close();
                } catch (SQLException ignore) {
                }
            }
            if (connection != null) {
                try {
                    connection.close();
                } catch (SQLException ignore) {
                }
            }
        }
        return janjiList;
    }

    public String generateKode() {
        String kode = "kosong";
        String kode2 = null;
        int angka = 0;
        String oper;
        try {
            String sql = "SELECT * FROM janji order by kode_janji desc";
            Connection c = Koneksi.koneksi.getKoneksi();
            Statement s = c.createStatement();
            ResultSet rs = s.executeQuery(sql);
            if (rs.next()) {

                kode = rs.getString("KODE_JANJI").substring(0, 2);
                kode2 = rs.getString("KODE_JANJI").substring(2, 8);
                angka = Integer.parseInt(kode2);
                angka = angka + 1;
                oper = String.valueOf(angka);
                kode = kode + oper;
                rs.getString("KODE_JANJI").substring(0, 2);
                return kode;
            }
        } catch (SQLException ex) {
            ex.getMessage();
        }
        return kode;
    }

    public void inputJanji(String tgl, String jam, String kode_pasien) {
        Connection conn = null;

        String kode_janji = this.generateKode();
        try {
            Connection c = Koneksi.koneksi.getKoneksi();
            String query = "INSERT INTO JANJI VALUES (?,?,?,?)";

            PreparedStatement statment1 = connection.prepareStatement(query);
            statment1.setString(1, kode_janji);
            statment1.setString(2, tgl);
            statment1.setString(3, jam);
            statment1.setString(4, kode_pasien);
            statment1.executeUpdate();
            conn.commit();
            conn.close();
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
    }
    public void SimpanData(String tgl, String waktu, String kode_pasien) {
      
        Connection conn = null;
        PreparedStatement statment1 = null;

        try {
            conn = database.getConnection();
            String query = "INSERT INTO JANJI VALUES (?,?,?,?)";

            statment1 = conn.prepareStatement(query);
            statment1.setString(1, this.generateKode());
            statment1.setString(2, tgl);
            statment1.setString(3, waktu);
            statment1.setString(4, kode_pasien);
            statment1.executeUpdate();
            conn.commit();
            conn.close();

        } catch (SQLException | HeadlessException ex) {
            System.out.println(ex);
        }

    }
    public String cekJanji(String waktu, String tgl) {
        String a = null;
        try {
            String sql = "select * from janji where jam ='" + waktu + "' and tanggal ='" + tgl + "'";
            Connection c = Koneksi.koneksi.getKoneksi();
            Statement s = c.createStatement();
            ResultSet rs = s.executeQuery(sql);
            if (rs.next()) {
                a = "terisi";

            } else {
                a = "kosong";
            }
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
        return a;
    }

}

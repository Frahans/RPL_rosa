/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.Obat;
import java.awt.HeadlessException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author admin
 */
public class ObatDAO {

    Connection connection;
    DatabaseConnection database = new DatabaseConnection();

    public ArrayList<Obat> list() throws SQLException {
        connection = null;
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        ArrayList<Obat> obatList = new ArrayList<Obat>();
        try {
            connection = database.getConnection();
            statement = connection.prepareStatement("SELECT * FROM OBAT");
            resultSet = statement.executeQuery();
            while (resultSet.next()) {
                Obat obat = new Obat();
                obat.setHarga(resultSet.getDouble("HARGA_OBAT"));
                obat.setKode_obat(resultSet.getString("KODE_OBAT"));
                obat.setNama_obat(resultSet.getString("NAMA_OBAT"));
                obat.setStok(resultSet.getInt("STOK_OBAT"));
                obatList.add(obat);
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
        return obatList;
    }

    public void HapusDataObat(String[] idBarang) {
        Connection conn = null;
        PreparedStatement statment1 = null;

        try {
            conn = Koneksi.koneksi.getKoneksi();
            String query;
            
            for (int i = 0; i < idBarang.length; i++) {
                
                query = "DELETE FROM obat WHERE KODE_OBAT= ?";
                statment1 = conn.prepareStatement(query);
                statment1.setString(1, idBarang[i]);
                statment1.executeUpdate();
                conn.commit();
            }

            conn.commit();
            conn.close();
        } catch (SQLException | HeadlessException ex) {
            System.out.println(ex);
        }
    }
}

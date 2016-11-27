/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.Obat;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
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
}

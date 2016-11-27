/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.Pasien;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author admin
 */
public class PasienDAO {

    Connection connection;
    DatabaseConnection database = new DatabaseConnection();

    public ArrayList<Pasien> list() throws SQLException {
        connection = null;
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        ArrayList<Pasien> pasienList = new ArrayList<Pasien>();
        try {
            connection = database.getConnection();
            statement = connection.prepareStatement("SELECT * FROM Pegawai");
            resultSet = statement.executeQuery();
            while (resultSet.next()) {
                Pasien pasien = new Pasien();
                pasien.setAgama(resultSet.getString("agama"));
                pasien.setAlamat(resultSet.getString("alamat"));
                pasien.setJenis_kelamin(resultSet.getString("jenisKelamin"));
                pasien.setKode_pasien(resultSet.getString("kdPasien"));
                pasien.setNama(resultSet.getString("nama"));
                pasien.setNomor_jaminan(resultSet.getString("noJaminan"));
                pasien.setNomor_telpon(resultSet.getString("noTelpon"));
                pasien.setPekerjaan(resultSet.getString("pekerjaan"));
                pasien.setTipe_jaminan(resultSet.getString("tipeJaminan"));
                pasien.setTipe_pasien(resultSet.getString("tipePasien"));
                pasien.setTtl(resultSet.getString("ttl"));
                pasienList.add(pasien);
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
        return pasienList;
    }
}

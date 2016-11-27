/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.Pegawai;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author admin
 */
public class PegawaiDAO {

    Connection connection;
    DatabaseConnection database = new DatabaseConnection();

    public ArrayList<Pegawai> list() throws SQLException {
        connection = null;
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        ArrayList<Pegawai> pegawaiList = new ArrayList<Pegawai>();
        try {
            connection = database.getConnection();
            statement = connection.prepareStatement("SELECT * FROM Pegawai");
            resultSet = statement.executeQuery();
            while (resultSet.next()) {
                Pegawai pegawai = new Pegawai();
                pegawai.setAgama(resultSet.getString("agama"));
                pegawai.setAlamat(resultSet.getString("alamat"));
                pegawai.setJenis_kelamin(resultSet.getString("jenisKelamin"));
                pegawai.setKode_pegawai(resultSet.getString("kdPegawai"));
                pegawai.setNama(resultSet.getString("nama"));
                pegawai.setStatus(resultSet.getString("status"));
                pegawai.setTtl(resultSet.getString("ttl"));
                pegawaiList.add(pegawai);
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
        return pegawaiList;
    }
}

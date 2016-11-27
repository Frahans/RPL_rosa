/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.ResepdanTagihan;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author admin
 */
public class RT_DAO {

    Connection connection;
    DatabaseConnection database = new DatabaseConnection();

    public ArrayList<ResepdanTagihan> list() throws SQLException {
        connection = null;
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        ArrayList<ResepdanTagihan> resepTagihanList = new ArrayList<ResepdanTagihan>();
        try {
            connection = database.getConnection();
            statement = connection.prepareStatement("SELECT * FROM RT");
            resultSet = statement.executeQuery();
            while (resultSet.next()) {
                ResepdanTagihan rt = new ResepdanTagihan();
                rt.setBiaya_administrasi(resultSet.getDouble("biayaAdmin"));
                rt.setBiaya_obat(resultSet.getDouble("biayaObat"));
                rt.setBiaya_periksa(resultSet.getDouble("biayaPeriksa"));
                rt.setBiaya_total(resultSet.getDouble("biayaTotal"));
                rt.setDosis(resultSet.getString("dosis"));
                rt.setJenis_pembayaran(resultSet.getString("jenisPembayaran"));
                rt.setJumlah(resultSet.getInt("jumlah"));
                rt.setKode_resep(resultSet.getString("kdResep"));
                rt.setNama_obat(resultSet.getString("namaObat"));
                rt.setStatus(resultSet.getString("status"));
                rt.setTanggal_periksa(resultSet.getString("tanggalPeriksa"));
                resepTagihanList.add(rt);
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
        return resepTagihanList;
    }
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.RekamMedis;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author admin
 */
public class RM_DAO {

    Connection connection;
    DatabaseConnection database = new DatabaseConnection();

    public ArrayList<RekamMedis> list() throws SQLException {
        connection = null;
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        ArrayList<RekamMedis> rmList = new ArrayList<RekamMedis>();
        try {
            connection = database.getConnection();
            statement = connection.prepareStatement("SELECT * FROM RekamMedis");
            resultSet = statement.executeQuery();
            while (resultSet.next()) {
                RekamMedis rm = new RekamMedis();
                rm.setAnamnesis(resultSet.getString("anamnesis"));
                rm.setBb(resultSet.getString("bb"));
                rm.setDiagnosa(resultSet.getString("diagnosa"));
                rm.setJantung(resultSet.getString("jantung"));
                rm.setKode_rekamMedis(resultSet.getString("kdRm"));
                rm.setNadi(resultSet.getString("nadi"));
                rm.setNafas(resultSet.getString("nafas"));
                rm.setParu(resultSet.getString("paru"));
                rm.setPerut(resultSet.getString("perut"));
                rm.setPlan(resultSet.getString("plan"));
                rm.setTanggalPeriksa(resultSet.getString("tglPeriksa"));
                rm.setTb(resultSet.getString("tb"));
                rm.setTensi(resultSet.getString("tensi"));
                rmList.add(rm);
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
        return rmList;
    }
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.Akun;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author admin
 */
public class Akun_DAO {

    Connection connection;
    DatabaseConnection database = new DatabaseConnection();

    public ArrayList<Akun> list() throws SQLException {
        connection = null;
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        ArrayList<Akun> akunList = new ArrayList<Akun>();
        try {
            connection = database.getConnection();
            statement = connection.prepareStatement("SELECT * FROM akun");
            resultSet = statement.executeQuery();
            while (resultSet.next()) {
                Akun akun = new Akun();
                akun.setKode_penggguna(resultSet.getString("kdPengguna"));
                akun.setUsername(resultSet.getString("username"));
                akun.setPassword(resultSet.getString("password"));
                akun.setEmail(resultSet.getString("email"));
                akunList.add(akun);
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
        return akunList;
    }
}

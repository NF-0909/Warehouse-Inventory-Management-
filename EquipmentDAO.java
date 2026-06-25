package dao;

import beans.EquipmentBean;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class EquipmentDAO {

    public void addEquipment(EquipmentBean equipment) throws SQLException {
        String sql = "INSERT INTO Equipment (EquipmentName, EquipmentType, ConditionStatus, PricePerDay, AvailabilityStatus) VALUES (?, ?, ?, ?, ?)";

        Connection con = DBConnection.getConnection();
        PreparedStatement ps = con.prepareStatement(sql);

        ps.setString(1, equipment.getEquipmentName());
        ps.setString(2, equipment.getEquipmentType());
        ps.setString(3, equipment.getConditionStatus());
        ps.setBigDecimal(4, equipment.getPricePerDay());
        ps.setBoolean(5, equipment.isAvailabilityStatus());

        ps.executeUpdate();
        ps.close();
        con.close();
    }

    public List<EquipmentBean> getAllEquipment() throws SQLException {
        List<EquipmentBean> list = new ArrayList<>();
        String sql = "SELECT * FROM Equipment";

        Connection con = DBConnection.getConnection();
        PreparedStatement ps = con.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();

        while (rs.next()) {
            EquipmentBean e = new EquipmentBean();
            e.setEquipmentID(rs.getInt("EquipmentID"));
            e.setEquipmentName(rs.getString("EquipmentName"));
            e.setEquipmentType(rs.getString("EquipmentType"));
            e.setConditionStatus(rs.getString("ConditionStatus"));
            e.setPricePerDay(rs.getBigDecimal("PricePerDay"));
            e.setAvailabilityStatus(rs.getBoolean("AvailabilityStatus"));
            list.add(e);
        }

        rs.close();
        ps.close();
        con.close();

        return list;
    }

    public EquipmentBean getEquipmentById(int equipmentID) throws SQLException {
        String sql = "SELECT * FROM Equipment WHERE EquipmentID=?";

        Connection con = DBConnection.getConnection();
        PreparedStatement ps = con.prepareStatement(sql);
        ps.setInt(1, equipmentID);

        ResultSet rs = ps.executeQuery();
        EquipmentBean e = null;

        if (rs.next()) {
            e = new EquipmentBean();
            e.setEquipmentID(rs.getInt("EquipmentID"));
            e.setEquipmentName(rs.getString("EquipmentName"));
            e.setEquipmentType(rs.getString("EquipmentType"));
            e.setConditionStatus(rs.getString("ConditionStatus"));
            e.setPricePerDay(rs.getBigDecimal("PricePerDay"));
            e.setAvailabilityStatus(rs.getBoolean("AvailabilityStatus"));
        }

        rs.close();
        ps.close();
        con.close();

        return e;
    }

    public void updateEquipment(EquipmentBean equipment) throws SQLException {
        String sql = "UPDATE Equipment SET EquipmentName=?, EquipmentType=?, ConditionStatus=?, PricePerDay=?, AvailabilityStatus=? WHERE EquipmentID=?";

        Connection con = DBConnection.getConnection();
        PreparedStatement ps = con.prepareStatement(sql);

        ps.setString(1, equipment.getEquipmentName());
        ps.setString(2, equipment.getEquipmentType());
        ps.setString(3, equipment.getConditionStatus());
        ps.setBigDecimal(4, equipment.getPricePerDay());
        ps.setBoolean(5, equipment.isAvailabilityStatus());
        ps.setInt(6, equipment.getEquipmentID());

        ps.executeUpdate();
        ps.close();
        con.close();
    }

    public void deleteEquipment(int equipmentID) throws SQLException {
        String sql = "DELETE FROM Equipment WHERE EquipmentID=?";

        Connection con = DBConnection.getConnection();
        PreparedStatement ps = con.prepareStatement(sql);

        ps.setInt(1, equipmentID);
        ps.executeUpdate();

        ps.close();
        con.close();
    }

    public void updateAvailability(int equipmentID, boolean status) throws SQLException {
        String sql = "UPDATE Equipment SET AvailabilityStatus=? WHERE EquipmentID=?";

        Connection con = DBConnection.getConnection();
        PreparedStatement ps = con.prepareStatement(sql);

        ps.setBoolean(1, status);
        ps.setInt(2, equipmentID);

        ps.executeUpdate();
        ps.close();
        con.close();
    }
}